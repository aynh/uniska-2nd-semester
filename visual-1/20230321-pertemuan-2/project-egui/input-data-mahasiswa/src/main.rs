use eframe::egui;

fn main() -> Result<(), eframe::Error> {
    eframe::run_native(
        "Input Data Mahasiswa",
        eframe::NativeOptions {
            centered: true,
            resizable: false,
            initial_window_size: Some([420.0, 390.0].into()),
            ..Default::default()
        },
        Box::new(|_cc| Box::<FormInputDataMahasiswa>::default()),
    )
}

trait InputWidget {
    fn widget(&mut self, ui: &mut egui::Ui);
}

#[derive(PartialEq, Eq)]
struct FormInputDataMahasiswa {
    npm: String,
    nama_lengkap: String,
    tanggal_lahir: chrono::NaiveDate,
    fakultas: Fakultas,
    program_studi: ProgramStudi,
    jenis_kelamin: JenisKelamin,
    alamat: String,
    nomor_handphone: String,
    email: String,
    agama: Agama,
    status_nikah: StatusNikah,
}

impl Default for FormInputDataMahasiswa {
    fn default() -> Self {
        FormInputDataMahasiswa {
            npm: "2210010".to_string(),
            nama_lengkap: "Ahmad Yasser".to_string(),
            tanggal_lahir: chrono::NaiveDate::from_ymd_opt(2003, 12, 17).unwrap(),
            fakultas: Fakultas::TeknologiInformasi,
            program_studi: ProgramStudi::TeknikInformatika,
            jenis_kelamin: JenisKelamin::LakiLaki,
            alamat: "".to_string(),
            nomor_handphone: "".to_string(),
            email: "".to_string(),
            agama: Agama::Islam,
            status_nikah: StatusNikah::Belum,
        }
    }
}

impl InputWidget for FormInputDataMahasiswa {
    fn widget(&mut self, ui: &mut egui::Ui) {
        ui.label("NPM");
        ui.text_edit_singleline(&mut self.npm);
        self.npm.truncate(10);
        ui.end_row();

        ui.label("Nama Lengkap");
        ui.text_edit_singleline(&mut self.nama_lengkap);
        ui.end_row();

        ui.label("Taggal lahir");
        ui.add(egui_extras::DatePickerButton::new(&mut self.tanggal_lahir));
        ui.end_row();

        ui.label("Fakultas");
        self.fakultas.widget(ui);
        let program_studi = self.fakultas.program_studi();
        if program_studi.binary_search(&self.program_studi).is_err() {
            self.program_studi = program_studi[0];
        };
        ui.end_row();

        ui.label("Program Studi");
        (&mut self.program_studi, program_studi).widget(ui);
        ui.end_row();

        ui.label("Jenis Kelamin");
        self.jenis_kelamin.widget(ui);
        ui.end_row();

        ui.label("Alamat");
        ui.text_edit_multiline(&mut self.alamat);
        ui.end_row();

        ui.label("Nomor HP/WA");
        ui.text_edit_singleline(&mut self.nomor_handphone);
        self.nomor_handphone.truncate(13);
        ui.end_row();

        ui.label("Email");
        ui.text_edit_singleline(&mut self.email);
        ui.end_row();

        ui.label("Agama");
        self.agama.widget(ui);
        ui.end_row();

        ui.label("Status Nikah");
        self.status_nikah.widget(ui);
        ui.end_row();
    }
}

impl eframe::App for FormInputDataMahasiswa {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        egui::CentralPanel::default().show(ctx, |ui| {
            ui.vertical_centered(|ui| {
                ui.heading("Program Input Data Mahasiswa");
            });

            ui.add_space(7.5);

            egui::Grid::new("form-input-data-mahasiswa")
                .num_columns(2)
                .spacing([30.0, 7.5])
                .striped(true)
                .show(ui, |ui| {
                    self.widget(ui);
                });

            ui.add_space(7.5);

            ui.columns(2, |columns| {
                let _ = columns[0].button("Input");
                egui::reset_button(&mut columns[1], self);
            })
        });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Fakultas {
    Ekonomi,
    Hukum,
    IlmuFarmasi,
    IlmuSosialDanIlmuPolitik,
    KeguruanDanIlmuPendidikan,
    KesehatanMasyarakat,
    Pertanian,
    StudiIslam,
    Teknik,
    TeknologiInformasi,
    PascaSarjana,
}

impl Fakultas {
    fn program_studi(self) -> &'static [ProgramStudi] {
        use ProgramStudi::*;
        match self {
            Fakultas::Ekonomi => &[Manajemen],
            Fakultas::Hukum => &[IlmuHukum],
            Fakultas::IlmuFarmasi => &[Farmasi],
            Fakultas::IlmuSosialDanIlmuPolitik => &[IlmuAdministrasiPublik, IlmuKomunikasi],
            Fakultas::KeguruanDanIlmuPendidikan => &[
                BimbinganDanKonseling,
                PendidikanBahasaInggris,
                PendidikanKimia,
                PendidikanOlahraga,
            ],
            Fakultas::KesehatanMasyarakat => &[KesehatanMasyarakat],
            Fakultas::Pertanian => &[Agribisnis, Peternakan],
            Fakultas::StudiIslam => &[
                EkonomiSyariah,
                HukumEkonomiSyariah,
                PendidikanGuruMadrasahIbtidaiyah,
            ],
            Fakultas::Teknik => &[TeknikElektro, TeknikIndustri, TeknikMesin, TeknikSipil],
            Fakultas::TeknologiInformasi => &[SistemInformasi, TeknikInformatika],
            Fakultas::PascaSarjana => &[
                MagisterAdministrasiPendidikan,
                MagisterIlmuAdministrasiPublik,
                MagisterIlmuKomunikasi,
                MagisterManajemen,
                MagisterPeternakan,
            ],
        }
    }
}

impl InputWidget for Fakultas {
    fn widget(&mut self, ui: &mut egui::Ui) {
        let text = truncate_string(*self);
        egui::ComboBox::from_label("Pilihan Fakultas")
            .selected_text(text)
            .show_ui(ui, |ui| {
                use Fakultas::*;
                for fakultas in [
                    Ekonomi,
                    Hukum,
                    IlmuFarmasi,
                    IlmuSosialDanIlmuPolitik,
                    KeguruanDanIlmuPendidikan,
                    KesehatanMasyarakat,
                    Pertanian,
                    StudiIslam,
                    Teknik,
                    TeknologiInformasi,
                    PascaSarjana,
                ] {
                    ui.selectable_value(self, fakultas, format!("{}", fakultas));
                }
            });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum ProgramStudi {
    Agribisnis,
    BimbinganDanKonseling,
    EkonomiSyariah,
    Farmasi,
    HukumEkonomiSyariah,
    IlmuAdministrasiPublik,
    IlmuHukum,
    IlmuKomunikasi,
    KesehatanMasyarakat,
    Manajemen,
    PendidikanBahasaInggris,
    PendidikanGuruMadrasahIbtidaiyah,
    PendidikanKimia,
    PendidikanOlahraga,
    Peternakan,
    SistemInformasi,
    TeknikElektro,
    TeknikIndustri,
    TeknikInformatika,
    TeknikMesin,
    TeknikSipil,
    MagisterAdministrasiPendidikan,
    MagisterIlmuAdministrasiPublik,
    MagisterIlmuKomunikasi,
    MagisterManajemen,
    MagisterPeternakan,
}

impl InputWidget for (&mut ProgramStudi, &[ProgramStudi]) {
    fn widget(&mut self, ui: &mut egui::Ui) {
        let text = truncate_string(*self.0);
        egui::ComboBox::from_label("Pilihan Prodi")
            .selected_text(text)
            .show_ui(ui, |ui| {
                for program_studi in self.1 {
                    ui.selectable_value(self.0, *program_studi, format!("{}", program_studi));
                }
            });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum JenisKelamin {
    LakiLaki,
    Perempuan,
}

impl InputWidget for JenisKelamin {
    fn widget(&mut self, ui: &mut egui::Ui) {
        ui.horizontal(|ui| {
            use JenisKelamin::*;
            for jenis_kelamin in [LakiLaki, Perempuan] {
                ui.radio_value(self, jenis_kelamin, format!("{}", jenis_kelamin));
            }
        });
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Agama {
    Islam,
    Kristen,
    Katolik,
    Budha,
    Hindu,
    Konghucu,
}

impl InputWidget for Agama {
    fn widget(&mut self, ui: &mut egui::Ui) {
        egui::ComboBox::from_label("Pilihan Agama")
            .selected_text(format!("{}", self))
            .show_ui(ui, |ui| {
                use Agama::*;
                for agama in [Islam, Kristen, Katolik, Budha, Hindu, Konghucu] {
                    ui.selectable_value(self, agama, format!("{}", agama));
                }
            });
    }
}

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
enum StatusNikah {
    #[default]
    Belum,
    Sudah,
}

impl InputWidget for StatusNikah {
    fn widget(&mut self, ui: &mut egui::Ui) {
        ui.horizontal(|ui| {
            use StatusNikah::*;
            for status_nikah in [Belum, Sudah] {
                ui.radio_value(self, status_nikah, format!("{} Nikah", status_nikah));
            }
        });
    }
}

fn truncate_string(s: impl ToString) -> String {
    let mut s = s.to_string();
    s.truncate(20);
    if s.len() == 20 {
        s.push_str("...");
    }

    s
}

macro_rules! impl_display_to_enum {
    ($T:ident) => {
        impl std::fmt::Display for $T {
            fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                for (idx, ch) in format!("{:?}", self).chars().enumerate() {
                    if idx > 0 && ch.is_ascii_uppercase() {
                        // add space before uppercase chars
                        write!(f, " ")?;
                    }

                    write!(f, "{ch}")?
                }

                Ok(())
            }
        }
    };
}

impl_display_to_enum!(Agama);
impl_display_to_enum!(Fakultas);
impl_display_to_enum!(JenisKelamin);
impl_display_to_enum!(StatusNikah);
impl_display_to_enum!(ProgramStudi);
