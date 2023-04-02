use eframe::egui;

fn main() -> Result<(), eframe::Error> {
    eframe::run_native(
        "Konversi Suhu",
        eframe::NativeOptions {
            centered: true,
            resizable: false,
            initial_window_size: Some([400.0, 160.0].into()),
            ..Default::default()
        },
        Box::new(|_cc| Box::<FormKonversiSuhu>::default()),
    )
}

#[derive(PartialEq)]
struct FormKonversiSuhu {
    input: String,
    jenis_konversi: JenisKonversi,
}

impl Default for FormKonversiSuhu {
    fn default() -> Self {
        FormKonversiSuhu {
            input: "0.0".to_string(),
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

            ui.add_space(10.0);

            egui::Grid::new("form-konversi-suhu")
                .num_columns(2)
                .spacing([40.0, 10.0])
                .striped(true)
                .show(ui, |ui| {
                    {
                        use JenisKonversi::*;
                        for jenis_konversi in [CelciusKeFahrenheit, FahrenheitKeCelcius] {
                            ui.radio_value(
                                &mut self.jenis_konversi,
                                jenis_konversi,
                                jenis_konversi.to_string(),
                            );
                        }
                    }
                    ui.end_row();

                    ui.label(format!("Input {}", self.jenis_konversi.input()));
                    ui.text_edit_singleline(&mut self.input);
                    ui.end_row();

                    ui.label(format!("Output {}", self.jenis_konversi.output()));
                    let mut output = match self.input.parse() {
                        Ok(value) => self.jenis_konversi.calculate(value).to_string(),
                        Err(error) => format!("Error: {error}"),
                    };
                    ui.add_enabled_ui(false, |ui| {
                        ui.text_edit_singleline(&mut output);
                    });
                });

            ui.add_space(10.0);

            ui.centered_and_justified(|ui| {
                egui::reset_button(ui, self);
            });
        });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum JenisKonversi {
    CelciusKeFahrenheit,
    FahrenheitKeCelcius,
}

impl JenisKonversi {
    fn calculate(self, value: f64) -> f64 {
        match self {
            JenisKonversi::CelciusKeFahrenheit => (1.8 * value) + 32.0,
            JenisKonversi::FahrenheitKeCelcius => (value - 32.0) * 5.0 / 9.0,
        }
    }

    fn input(self) -> &'static str {
        match self {
            JenisKonversi::CelciusKeFahrenheit => "Celcius",
            JenisKonversi::FahrenheitKeCelcius => "Fahrenheit",
        }
    }

    fn output(self) -> &'static str {
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
