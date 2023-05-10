unit FormPenentuKelulusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Utilities;

type
  TPenentuKelulusan = class(TForm)
    GroupBoxInput: TGroupBox;
    EditNPM: TEdit;
    LabelNPM: TLabel;
    LabelNama: TLabel;
    EditNama: TEdit;
    GroupBoxNilai: TGroupBox;
    LabelAbsen: TLabel;
    EditAbsen: TEdit;
    TrackBarAbsen: TTrackBar;
    LabelTugas: TLabel;
    EditTugas: TEdit;
    TrackBarTugas: TTrackBar;
    TrackBarUTS: TTrackBar;
    LabelUTS: TLabel;
    EditUTS: TEdit;
    TrackBarUAS: TTrackBar;
    LabelUAS: TLabel;
    EditUAS: TEdit;
    ButtonReset: TButton;
    GroupBoxOutput: TGroupBox;
    LabelNPMOutput: TLabel;
    EditNPMOutput: TEdit;
    LabelNamaOutput: TLabel;
    EditNamaOutput: TEdit;
    GroupBoxHasil: TGroupBox;
    LabelNilaiAkhir: TLabel;
    LabelNilaiAkhirOutput: TLabel;
    LabelPredikatOutput: TLabel;
    LabelPredikat: TLabel;
    LabelKesimpulan: TLabel;
    procedure EditNPMChange(Sender: TObject);
    procedure EditNamaChange(Sender: TObject);
    procedure EditAbsenKeyPress(Sender: TObject; var Key: Char);
    procedure EditTugasKeyPress(Sender: TObject; var Key: Char);
    procedure EditUTSKeyPress(Sender: TObject; var Key: Char);
    procedure EditUASKeyPress(Sender: TObject; var Key: Char);
    procedure TrackBarAbsenChange(Sender: TObject);
    procedure TrackBarTugasChange(Sender: TObject);
    procedure TrackBarUTSChange(Sender: TObject);
    procedure TrackBarUASChange(Sender: TObject);
    procedure EditAbsenChange(Sender: TObject);
    procedure EditTugasChange(Sender: TObject);
    procedure EditUTSChange(Sender: TObject);
    procedure EditUASChange(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure PerbaruiHasil;
    { Public declarations }
  end;

var
  PenentuKelulusan: TPenentuKelulusan;

procedure ValidasiNilai(var Key: Char; Edit: TEdit);
procedure SinkronisasiTrackBar(Edit: TEdit; TrackBar: TTrackBar);

implementation

{$R *.dfm}

procedure TPenentuKelulusan.EditNPMChange(Sender: TObject);
begin
  // sinkronisasi NPM output dengan NPM input setiap NPM input berubah
  EditNPMOutput.Text := EditNPM.Text;
end;

procedure TPenentuKelulusan.EditNamaChange(Sender: TObject);
begin
  // sinkronisasi Nama output dengan Nama input setiap Nama input berubah
  EditNamaOutput.Text := EditNama.Text;
end;

// procedure untuk memperbarui hasil yang meliputi:
// nilai akhir, nilai abjad, dan kesimpulan (lulus atau tidak)
procedure TPenentuKelulusan.PerbaruiHasil;
var
  absen, tugas, uts, uas: Integer;
  akhir: Double;
  predikat: string;
begin
  // ambil nilai absen, tugas, UTS, dan UAS
  // dari posisi trackbar-nya masing-masing
  absen := TrackBarAbsen.Position;
  tugas := TrackBarTugas.Position;
  uts := TrackBarUTS.Position;
  uas := TrackBarUAS.Position;

  // rasio nilai: absen 10%, tugas 30%, UTS 25%, dan UAS 35%
  akhir := (absen * 1 / 10) + (tugas * 3 / 10) + (uts * 25 / 100) + (uas * 35 /
    100);
  // set caption label nilai akhir dengan nilai akhir
  LabelNilaiAkhirOutput.Caption := FloatToStr(akhir);

  // tidak perlu kondisi kurang dari 100 dan lebih dari 0 karena
  // sudah divalidasi sewaktu menginput
  if akhir >= 80 then
    predikat := 'A'
  else if akhir >= 75 then
    predikat := 'B+'
  else if akhir >= 70 then
    predikat := 'B'
  else if akhir >= 65 then
    predikat := 'C+'
  else if akhir >= 60 then
    predikat := 'C'
  else if akhir >= 50 then
    predikat := 'D'
  else
    predikat := 'E';
  LabelPredikatOutput.Caption := predikat;

  if akhir >= 60 then
  begin
    LabelKesimpulan.Caption := 'LULUS';
    // ubah warna background label hasil
    // dengan warna hijau muda kalau lulus
    LabelNilaiAkhirOutput.Color := clLime;
    LabelPredikatOutput.Color := clLime;
    LabelKesimpulan.Color := clLime;
  end
  else
  begin
    LabelKesimpulan.Caption := 'TIDAK LULUS';
    // ubah warna background label hasil
    // dengan warna merah kalau tidak lulus
    LabelNilaiAkhirOutput.Color := clRed;
    LabelPredikatOutput.Color := clRed;
    LabelKesimpulan.Color := clRed;
  end;
end;

// procedure untuk validasi nilai agar nilai
// tidak boleh kurang dari 0 dan nilai tidak
// boleh lebih dari 100
procedure ValidasiNilai(var Key: Char; Edit: TEdit);
var
  nilai: Integer;
begin
  // validasi karakter yang di input terlebih dahulu
  ValidasiNomor(Key);

  // bila karakter yang di input adalah nomor:
  if Key in ['0'..'9'] then
  begin
    // cek nilai yang akan didapat bila karakter tersebut
    // ditambahkan di akhir inputan sekarang
    nilai := StrToInt(Edit.Text + Key);
    // jika kurang dari 0 atau lebih dari 100:
    if (nilai < 0) or (nilai > 100) then
    begin
      // clear inputan
      Key := #0;
      // tampilkan messagebox untuk memberi tahu user
      MessageDlg('Tolong input angka di antara 0 - 100', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TPenentuKelulusan.EditAbsenKeyPress(Sender: TObject;
  var Key: Char);
begin
  // validasi nilai absen
  ValidasiNilai(Key, EditAbsen);
end;

procedure TPenentuKelulusan.EditTugasKeyPress(Sender: TObject;
  var Key: Char);
begin
  // validasi nilai tugas
  ValidasiNilai(Key, EditTugas);
end;

procedure TPenentuKelulusan.EditUTSKeyPress(Sender: TObject;
  var Key: Char);
begin
  // validasi nilai UTS
  ValidasiNilai(Key, EditUTS);
end;

procedure TPenentuKelulusan.EditUASKeyPress(Sender: TObject;
  var Key: Char);
begin
  // validasi nilai UAS
  ValidasiNilai(Key, EditUAS);
end;

procedure TPenentuKelulusan.TrackBarAbsenChange(Sender: TObject);
begin
  // sinkronisasikan inputan absen dengan posisi trackbar absen
  // setiap kali trackbar absen berubah
  EditAbsen.Text := IntToStr(TrackBarAbsen.Position);
end;

procedure TPenentuKelulusan.TrackBarTugasChange(Sender: TObject);
begin
  // sinkronisasikan inputan tugas dengan posisi trackbar tugas
  // setiap kali trackbar tugas berubah
  EditTugas.Text := IntToStr(TrackBarTugas.Position);
end;

procedure TPenentuKelulusan.TrackBarUTSChange(Sender: TObject);
begin
  // sinkronisasikan inputan UTS dengan posisi trackbar UTS
  // setiap kali trackbar UTS berubah
  EditUTS.Text := IntToStr(TrackBarUTS.Position);
end;

procedure TPenentuKelulusan.TrackBarUASChange(Sender: TObject);
begin
  // sinkronisasikan inputan UAS dengan posisi trackbar UAS
  // setiap kali trackbar UAS berubah
  EditUAS.Text := IntToStr(TrackBarUAS.Position);
end;

// procedure untuk sinkronisasi posisi trackbar dengan nilai inputan
// atau kebalikan dari 4 procedure diatas
procedure SinkronisasiTrackBar(Edit: TEdit; TrackBar: TTrackBar);
var
  nilai: Integer;
begin
  // bila inputan kosong
  if Edit.Text = '' then
    // set nilai dengan 0
    nilai := 0
  else
    // kalau tidak konversi inputan ke integer
    nilai := StrToInt(Edit.Text);

  // set posisi trackbar dengan nilai yang didapat sebelumnya
  TrackBar.Position := nilai;
  // setelah tersinkronisasi, perbarui hasil
  PenentuKelulusan.PerbaruiHasil;
end;

procedure TPenentuKelulusan.EditAbsenChange(Sender: TObject);
begin
  // sinkronisasi trackbar absen dengan inputan absen
  SinkronisasiTrackBar(EditAbsen, TrackBarAbsen);
end;

procedure TPenentuKelulusan.EditTugasChange(Sender: TObject);
begin
  // sinkronisasi trackbar tugas dengan inputan tugas
  SinkronisasiTrackBar(EditTugas, TrackBarTugas);
end;

procedure TPenentuKelulusan.EditUTSChange(Sender: TObject);
begin
  // sinkronisasi trackbar UTS dengan inputan UTS
  SinkronisasiTrackBar(EditUTS, TrackBarUTS);
end;

procedure TPenentuKelulusan.EditUASChange(Sender: TObject);
begin
  // sinkronisasi trackbar UAS dengan inputan UAS
  SinkronisasiTrackBar(EditUAS, TrackBarUAS);
end;

procedure TPenentuKelulusan.ButtonResetClick(Sender: TObject);
begin
  // kosongkan inputan NPM dan nama
  EditNPM.Clear;
  EditNama.Clear;

  // set inputan nilai dengan nilai 0
  EditAbsen.Text := '0';
  EditTugas.Text := '0';
  EditUTS.Text := '0';
  EditUAS.Text := '0';

  // reset warna background label hasil ke default-nya
  LabelNilaiAkhirOutput.Color := clBtnFace;
  LabelPredikatOutput.Color := clBtnFace;
  LabelKesimpulan.Color := clBtnFace;
end;

procedure TPenentuKelulusan.FormShow(Sender: TObject);
begin
  // tutup menu utama kalau form ini di tampilkan
  TutupMenuUtama;
end;

procedure TPenentuKelulusan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // tampilkan kembali menu utama kalau form ini di tutup
  TampilkanMenuUtama;
end;

end.
