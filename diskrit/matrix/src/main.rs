use crate::matrix::{DynamicMatrix, StaticMatrix};

mod matrix;

fn main() {
    let a = DynamicMatrix::new([[1, -1], [4, 0]]);
    let b = DynamicMatrix::new([[1, 2, 3], [0, -1, 3]]);
    let c = a * b;
    println!("{:?} {:?}", c.clone(), c.transpose());

    let a = StaticMatrix::new([[1, -1], [4, 0]]);
    let b = StaticMatrix::new([[1, 2, 3], [0, -1, 3]]);
    let c = a * b;
    println!("{:?} {:?}", c, c.transpose());
}
