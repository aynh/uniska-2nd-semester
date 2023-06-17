unit FormDataMahasiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TDataMahasiswa = class(TForm)
    GroupBoxData: TGroupBox;
    LabelNPM: TLabel;
    EditNPM: TEdit;
    EditNamaLengkap: TEdit;
    LabelNamaLengkap: TLabel;
    RadioGroupProgramStudi: TRadioGroup;
    LabelTanggalLahir: TLabel;
    DateTimePickerTanggalLahir: TDateTimePicker;
    LabelTempatLahir: TLabel;
    EditTempatLahir: TEdit;
    RadioGroupJenisKelamin: TRadioGroup;
    GroupBoxAction: TGroupBox;
    ButtonTambah: TButton;
    ButtonUbah: TButton;
    ButtonHapus: TButton;
    ButtonClear: TButton;
    GroupBoxDaftarData: TGroupBox;
    ADOConnectionMahasiswa: TADOConnection;
    ADODataSetMahasiswa: TADODataSet;
    DataSourceMahasiswa: TDataSource;
    DBGridMahasiswa: TDBGrid;
    LabelCari: TLabel;
    EditCari: TEdit;
    ADODataSetMahasiswaID: TAutoIncField;
    ADODataSetMahasiswanpm: TWideStringField;
    ADODataSetMahasiswanama_lengkap: TWideStringField;
    ADODataSetMahasiswaprodi: TWideStringField;
    ADODataSetMahasiswatanggal_lahir: TDateTimeField;
    ADODataSetMahasiswatempat_lahir: TWideStringField;
    ADODataSetMahasiswajenis_kelamin: TWideStringField;
    procedure Reset;
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonTambahClick(Sender: TObject);
    procedure DBGridMahasiswaCellClick(Column: TColumn);
    procedure ButtonUbahClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure EditCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMahasiswa: TDataMahasiswa;

implementation

{$R *.dfm}

procedure TDataMahasiswa.Reset;
begin
  EditNPM.Clear;
  EditNamaLengkap.Clear;
  RadioGroupProgramStudi.ItemIndex := -1;
  DateTimePickerTanggalLahir.Date := Now;
  EditTempatLahir.Clear;
  RadioGroupJenisKelamin.ItemIndex := -1;

  // hanya nyalakan tombol tambah
  ButtonTambah.Enabled := True;
  ButtonUbah.Enabled := False;
  ButtonHapus.Enabled := False;
end;

procedure TDataMahasiswa.ButtonClearClick(Sender: TObject);
begin
  Reset;
end;

procedure TDataMahasiswa.ButtonTambahClick(Sender: TObject);
begin
  if EditNPM.Text = '' then
    MessageDlg('NPM belum diisi!', mtError, [mbOK], 0)
  else if EditNamaLengkap.Text = '' then
    MessageDlg('Nama lengkap belum diisi!', mtError, [mbOK], 0)
  else if RadioGroupProgramStudi.ItemIndex = -1 then
    MessageDlg('Program studi belum dipilih!', mtError, [mbOK], 0)
  else if EditTempatLahir.Text = '' then
    MessageDlg('Tempat lahir belum diisi!', mtError, [mbOK], 0)
  else if RadioGroupJenisKelamin.ItemIndex = -1 then
    MessageDlg('Jenis kelamin belum dipilih!', mtError, [mbOK], 0)
  else
  begin
    ADODataSetMahasiswa.Append;
    ADODataSetMahasiswa.FieldValues['npm'] := EditNPM.Text;
    ADODataSetMahasiswa.FieldValues['nama_lengkap'] := EditNamaLengkap.Text;
    ADODataSetMahasiswa.FieldValues['prodi'] := RadioGroupProgramStudi.Items[RadioGroupProgramStudi.ItemIndex];
    ADODataSetMahasiswa.FieldValues['tanggal_lahir'] := DateTimePickerTanggalLahir.Date;
    ADODataSetMahasiswa.FieldValues['tempat_lahir'] := EditTempatLahir.Text;
    ADODataSetMahasiswa.FieldValues['jenis_kelamin'] := RadioGroupJenisKelamin.Items[RadioGroupJenisKelamin.ItemIndex];
    ADODataSetMahasiswa.Post;
    MessageDlg('Data mahasiswa berhasil ditambahkan!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataMahasiswa.DBGridMahasiswaCellClick(Column: TColumn);
begin
  EditNPM.Text := ADODataSetMahasiswa.FieldValues['npm'];
  EditNamaLengkap.Text := ADODataSetMahasiswa.FieldValues['nama_lengkap'];
  if ADODataSetMahasiswa.FieldValues['prodi'] = RadioGroupProgramStudi.Items[0] then
    RadioGroupProgramStudi.ItemIndex := 0
  else
    RadioGroupProgramStudi.ItemIndex := 1;
  DateTimePickerTanggalLahir.Date := ADODataSetMahasiswa.FieldValues['tanggal_lahir'];
  EditTempatLahir.Text := ADODataSetMahasiswa.FieldValues['tempat_lahir'];
  if ADODataSetMahasiswa.FieldValues['jenis_kelamin'] = RadioGroupJenisKelamin.Items[0] then
    RadioGroupJenisKelamin.ItemIndex := 0
  else
    RadioGroupJenisKelamin.ItemIndex := 1;

  // matikan tombol tambah dan nyalakan tombol ubah dan hapus
  ButtonTambah.Enabled := False;
  ButtonUbah.Enabled := True;
  ButtonHapus.Enabled := True;
end;

procedure TDataMahasiswa.ButtonUbahClick(Sender: TObject);
begin
  if EditNPM.Text = '' then
    MessageDlg('NPM belum diisi!', mtError, [mbOK], 0)
  else if EditNamaLengkap.Text = '' then
    MessageDlg('Nama lengkap belum diisi!', mtError, [mbOK], 0)
  else if RadioGroupProgramStudi.ItemIndex = -1 then
    MessageDlg('Program studi belum dipilih!', mtError, [mbOK], 0)
  else if EditTempatLahir.Text = '' then
    MessageDlg('Tempat lahir belum diisi!', mtError, [mbOK], 0)
  else if RadioGroupJenisKelamin.ItemIndex = -1 then
    MessageDlg('Jenis kelamin belum dipilih!', mtError, [mbOK], 0)
  else
  begin
    ADODataSetMahasiswa.Edit;
    ADODataSetMahasiswa.FieldValues['npm'] := EditNPM.Text;
    ADODataSetMahasiswa.FieldValues['nama_lengkap'] := EditNamaLengkap.Text;
    ADODataSetMahasiswa.FieldValues['prodi'] := RadioGroupProgramStudi.Items[RadioGroupProgramStudi.ItemIndex];
    ADODataSetMahasiswa.FieldValues['tanggal_lahir'] := DateTimePickerTanggalLahir.Date;
    ADODataSetMahasiswa.FieldValues['tempat_lahir'] := EditTempatLahir.Text;
    ADODataSetMahasiswa.FieldValues['jenis_kelamin'] := RadioGroupJenisKelamin.Items[RadioGroupJenisKelamin.ItemIndex];
    ADODataSetMahasiswa.Post;
    MessageDlg('Data mahasiswa berhasil diubah!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataMahasiswa.ButtonHapusClick(Sender: TObject);
begin
  if MessageDlg('Ingin menghapus data mahasiswa ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADODataSetMahasiswa.Delete;
    MessageDlg('Data mahasiswa berhasil dihapus!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataMahasiswa.EditCariChange(Sender: TObject);
begin
  ADODataSetMahasiswa.Active := False;
  ADODataSetMahasiswa.CommandText := 'SELECT * FROM mahasiswa WHERE nama_lengkap LIKE "%' + EditCari.Text + '%"';
  ADODataSetMahasiswa.Active := True;
end;

end.

