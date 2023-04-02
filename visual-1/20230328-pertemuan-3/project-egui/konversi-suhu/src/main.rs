use eframe::egui;

fn main() -> Result<(), eframe::Error> {
    eframe::run_native(
        "Konversi Suhu",
        eframe::NativeOptions {
            centered: true,
            resizable: false,
            initial_window_size: Some([360.0, 180.0].into()),
            ..Default::default()
        },
        Box::new(|_cc| Box::<FormKonversiSuhu>::default()),
    )
}

#[derive(PartialEq)]
struct FormKonversiSuhu {
    input: f64,
    jenis_konversi: JenisKonversi,
}

impl Default for FormKonversiSuhu {
    fn default() -> Self {
        FormKonversiSuhu {
            input: 0.0,
            jenis_konversi: JenisKonversi::CelciusKeFahrenheit,
        }
    }
}

impl eframe::App for FormKonversiSuhu {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        egui::CentralPanel::default().show(ctx, |ui| {
            ui.vertical_centered(|ui| {
                ui.heading("Program Konversi Suhu");
            });

            ui.add_space(15.0);

            ui.horizontal(|ui| {
                use JenisKonversi::*;
                for jenis_konversi in [CelciusKeFahrenheit, FahrenheitKeCelcius] {
                    ui.radio_value(
                        &mut self.jenis_konversi,
                        jenis_konversi,
                        jenis_konversi.to_string(),
                    );
                }
            });

            ui.add_space(10.0);

            egui::Grid::new("form-konversi-suhu")
                .num_columns(2)
                .spacing([40.0, 10.0])
                .striped(true)
                .show(ui, |ui| {
                    ui.label(format!("Input {}", self.jenis_konversi.input_name()));
                    let mut input_tmp = self.input.to_string();
                    if ui.text_edit_singleline(&mut input_tmp).changed() {
                        self.input = if input_tmp.is_empty() {
                            0.0
                        } else {
                            input_tmp.parse().unwrap_or_default()
                        };
                    }
                    ui.end_row();

                    ui.label(format!("Output {}", self.jenis_konversi.output_name()));
                    let output = match self.jenis_konversi {
                        JenisKonversi::CelciusKeFahrenheit => (1.8 * self.input) + 32.0,
                        JenisKonversi::FahrenheitKeCelcius => (self.input - 32.0) * 5.0 / 9.0,
                    };
                    ui.add_enabled_ui(false, |ui| {
                        ui.text_edit_singleline(&mut output.to_string());
                    });
                });

            ui.add_space(15.0);

            egui::reset_button(ui, self);
        });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum JenisKonversi {
    CelciusKeFahrenheit,
    FahrenheitKeCelcius,
}

impl JenisKonversi {
    fn input_name(self) -> &'static str {
        match self {
            JenisKonversi::CelciusKeFahrenheit => "Celcius",
            JenisKonversi::FahrenheitKeCelcius => "Fahrenheit",
        }
    }

    fn output_name(self) -> &'static str {
        match self {
            JenisKonversi::CelciusKeFahrenheit => "Fahrenheit",
            JenisKonversi::FahrenheitKeCelcius => "Celcius",
        }
    }
}

impl std::fmt::Display for JenisKonversi {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{}",
            match self {
                JenisKonversi::CelciusKeFahrenheit => "Celcius -> Fahrenheit",
                JenisKonversi::FahrenheitKeCelcius => "Fahrenheit -> Celcius",
            }
        )
    }
}
