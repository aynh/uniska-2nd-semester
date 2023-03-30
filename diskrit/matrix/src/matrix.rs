use std::ops::{Add, Index, Mul, Sub};

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct DynamicMatrix<T> {
    size: (usize, usize),
    elements: Vec<T>,
}

impl<T> DynamicMatrix<T>
where
    T: Copy + Default,
{
    pub fn new<const C: usize, const R: usize>(elements: [[T; C]; R]) -> DynamicMatrix<T> {
        DynamicMatrix {
            size: (R, C),
            elements: elements.into_iter().flatten().collect(),
        }
    }

    pub fn transpose(self) -> DynamicMatrix<T> {
        let size = (self.size.1, self.size.0);
        let mut elements = vec![T::default(); size.0 * size.1];
        for (row_idx, row) in elements.chunks_exact_mut(size.1).enumerate() {
            for (col_idx, value) in row.iter_mut().enumerate() {
                *value = self[(col_idx, row_idx)];
            }
        }

        DynamicMatrix { elements, size }
    }
}

impl<T> Index<usize> for DynamicMatrix<T> {
    type Output = [T];

    fn index(&self, index: usize) -> &Self::Output {
        let start = index * self.size.1;
        let end = start + self.size.1;
        &self.elements[start..end]
    }
}

impl<T> Index<(usize, usize)> for DynamicMatrix<T> {
    type Output = T;

    fn index(&self, index: (usize, usize)) -> &Self::Output {
        &self[index.0][index.1]
    }
}

impl<T> Mul<T> for DynamicMatrix<T>
where
    T: Mul<Output = T> + Copy,
{
    type Output = DynamicMatrix<T>;

    fn mul(self, rhs: T) -> Self::Output {
        DynamicMatrix {
            elements: self.elements.into_iter().map(|value| value * rhs).collect(),
            ..self
        }
    }
}

impl<T> Mul for DynamicMatrix<T>
where
    T: Add<Output = T> + Mul<Output = T> + Copy + Default,
{
    type Output = DynamicMatrix<T>;

    fn mul(self, rhs: Self) -> Self::Output {
        if self.size.1 != rhs.size.0 {
            unimplemented!()
        }

        let size = (self.size.0, rhs.size.1);
        let mut elements = vec![T::default(); size.0 * size.1];
        for (row_idx, row) in elements.chunks_exact_mut(size.1).enumerate() {
            for (col_idx, value) in row.iter_mut().enumerate() {
                *value = (0..self.size.1)
                    .map(|i| self[(row_idx, i)] * rhs[(i, col_idx)])
                    .fold(T::default(), |acc, value| acc + value);
            }
        }

        DynamicMatrix { elements, size }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct StaticMatrix<T, const R: usize, const C: usize> {
    elements: [[T; C]; R],
}

impl<T, const R: usize, const C: usize> StaticMatrix<T, R, C>
where
    T: Copy + Default,
{
    pub fn new(elements: [[T; C]; R]) -> StaticMatrix<T, R, C> {
        StaticMatrix { elements }
    }

    pub fn transpose(self) -> StaticMatrix<T, C, R> {
        let mut elements = [[T::default(); R]; C];
        for (row_idx, row) in elements.iter_mut().enumerate() {
            for (col_idx, value) in row.iter_mut().enumerate() {
                *value = self[(col_idx, row_idx)];
            }
        }

        StaticMatrix { elements }
    }
}

impl<T, const R: usize, const C: usize> Index<usize> for StaticMatrix<T, R, C> {
    type Output = [T; C];

    fn index(&self, index: usize) -> &Self::Output {
        &self.elements[index]
    }
}

impl<T, const R: usize, const C: usize> Index<(usize, usize)> for StaticMatrix<T, R, C> {
    type Output = T;

    fn index(&self, index: (usize, usize)) -> &Self::Output {
        &self[index.0][index.1]
    }
}

impl<T, const R: usize, const C: usize> Mul<T> for StaticMatrix<T, R, C>
where
    T: Mul<Output = T> + Copy + Default,
{
    type Output = StaticMatrix<T, R, C>;

    fn mul(self, rhs: T) -> Self::Output {
        let mut elements = [[T::default(); C]; R];
        for (row_idx, row) in elements.iter_mut().enumerate() {
            for (col_idx, value) in row.iter_mut().enumerate() {
                *value = self[(row_idx, col_idx)] * rhs;
            }
        }

        StaticMatrix { elements }
    }
}

impl<T, const R1: usize, const C1: usize, const C2: usize> Mul<StaticMatrix<T, C1, C2>>
    for StaticMatrix<T, R1, C1>
where
    T: Add<Output = T> + Mul<Output = T> + Copy + Default,
{
    type Output = StaticMatrix<T, R1, C2>;

    fn mul(self, rhs: StaticMatrix<T, C1, C2>) -> Self::Output {
        let mut elements = [[T::default(); C2]; R1];
        for (row_idx, row) in elements.iter_mut().enumerate() {
            for (col_idx, value) in row.iter_mut().enumerate() {
                *value = (0..C1)
                    .map(|i| self[(row_idx, i)] * rhs[(i, col_idx)])
                    .fold(T::default(), |acc, value| acc + value);
            }
        }

        StaticMatrix { elements }
    }
}

macro_rules! impl_op_dynamic {
    ($trt:ident, $func:ident) => {
        impl<T> $trt for DynamicMatrix<T>
        where
            T: $trt<Output = T> + Copy,
        {
            type Output = DynamicMatrix<T>;

            fn $func(self, rhs: Self) -> Self::Output {
                if self.size != rhs.size {
                    unimplemented!()
                }

                DynamicMatrix {
                    elements: self
                        .elements
                        .iter()
                        .enumerate()
                        .map(|(idx, value)| value.$func(rhs.elements[idx]))
                        .collect(),
                    size: self.size,
                }
            }
        }

        impl<T, const R: usize, const C: usize> $trt<StaticMatrix<T, R, C>> for DynamicMatrix<T>
        where
            T: $trt<Output = T> + Copy,
        {
            type Output = DynamicMatrix<T>;

            fn $func(self, rhs: StaticMatrix<T, R, C>) -> Self::Output {
                if self.size != (R, C) {
                    unimplemented!()
                }

                DynamicMatrix {
                    elements: self
                        .elements
                        .chunks_exact(self.size.1)
                        .enumerate()
                        .flat_map(|(row_idx, row)| {
                            row.iter()
                                .enumerate()
                                .map(move |(col_idx, value)| value.$func(rhs[(row_idx, col_idx)]))
                        })
                        .collect(),
                    size: self.size,
                }
            }
        }
    };
}

impl_op_dynamic!(Add, add);
impl_op_dynamic!(Sub, sub);

macro_rules! impl_op_static {
    ($trt:ident, $func:ident) => {
        impl<T, const R: usize, const C: usize> $trt for StaticMatrix<T, R, C>
        where
            T: $trt<Output = T> + Copy + Default,
        {
            type Output = StaticMatrix<T, R, C>;

            fn $func(self, rhs: Self) -> Self::Output {
                let mut elements = [[T::default(); C]; R];
                for (row_idx, row) in elements.iter_mut().enumerate() {
                    for (col_idx, value) in row.iter_mut().enumerate() {
                        let idx = (row_idx, col_idx);
                        *value = self[idx].$func(rhs[idx])
                    }
                }

                StaticMatrix { elements }
            }
        }

        impl<T, const R: usize, const C: usize> $trt<DynamicMatrix<T>> for StaticMatrix<T, R, C>
        where
            T: $trt<Output = T> + Copy + Default,
        {
            type Output = StaticMatrix<T, R, C>;

            fn $func(self, rhs: DynamicMatrix<T>) -> Self::Output {
                if (R, C) != rhs.size {
                    unimplemented!()
                }

                let mut elements = [[T::default(); C]; R];
                for (row_idx, row) in elements.iter_mut().enumerate() {
                    for (col_idx, value) in row.iter_mut().enumerate() {
                        let idx = (row_idx, col_idx);
                        *value = self[idx].$func(rhs[(idx)])
                    }
                }

                StaticMatrix { elements }
            }
        }
    };
}
impl_op_static!(Add, add);
impl_op_static!(Sub, sub);
