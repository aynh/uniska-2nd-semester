unit FormDataDosen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TDataDosen = class(TForm)
    GroupBoxData: TGroupBox;
    LabelNIDN: TLabel;
    EditNIDN: TEdit;
    EditNamaLengkap: TEdit;
    LabelNamaLengkap: TLabel;
    LabelTanggalMasuk: TLabel;
    DateTimePickerTanggalMasuk: TDateTimePicker;
    LabelAlamat: TLabel;
    RadioGroupStatus: TRadioGroup;
    GroupBoxAction: TGroupBox;
    ButtonTambah: TButton;
    ButtonUbah: TButton;
    ButtonHapus: TButton;
    ButtonClear: TButton;
    GroupBoxDaftarData: TGroupBox;
    ADOConnectionDosen: TADOConnection;
    ADODataSetDosen: TADODataSet;
    DataSourceDosen: TDataSource;
    DBGridDosen: TDBGrid;
    LabelCari: TLabel;
    EditCari: TEdit;
    LabelAgama: TLabel;
    ComboBoxAgama: TComboBox;
    LabelNomorWA: TLabel;
    EditNomorWA: TEdit;
    EditAlamat: TEdit;
    ADODataSetDosenID: TAutoIncField;
    ADODataSetDosennidn: TWideStringField;
    ADODataSetDosennama_lengkap: TWideStringField;
    ADODataSetDosentanggal_masuk: TDateTimeField;
    ADODataSetDosenalamat: TWideStringField;
    ADODataSetDosennomor_wa: TWideStringField;
    ADODataSetDosenagama: TWideStringField;
    ADODataSetDosenstatus: TWideStringField;
    procedure Reset;
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonTambahClick(Sender: TObject);
    procedure DBGridDosenCellClick(Column: TColumn);
    procedure ButtonUbahClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure EditCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataDosen: TDataDosen;

implementation

{$R *.dfm}

procedure TDataDosen.Reset;
begin
  EditNIDN.Clear;
  EditNamaLengkap.Clear;
  DateTimePickerTanggalMasuk.Date := Now;
  EditAlamat.Clear;
  EditNomorWA.Clear;
  ComboBoxAgama.ItemIndex := -1;
  RadioGroupStatus.ItemIndex := -1;

  // hanya nyalakan tombol tambah
  ButtonTambah.Enabled := True;
  ButtonUbah.Enabled := False;
  ButtonHapus.Enabled := False;
end;

procedure TDataDosen.ButtonClearClick(Sender: TObject);
begin
  Reset;
end;

procedure TDataDosen.ButtonTambahClick(Sender: TObject);
begin
  if EditNIDN.Text = '' then
    MessageDlg('NIDN belum diisi!', mtError, [mbOK], 0)
  else if EditNamaLengkap.Text = '' then
    MessageDlg('Nama lengkap belum diisi!', mtError, [mbOK], 0)
  else if EditAlamat.Text = '' then
    MessageDlg('Alamat belum diisi!', mtError, [mbOK], 0)
  else if EditNomorWA.Text = '' then
    MessageDlg('Nomor WA belum diisi!', mtError, [mbOK], 0)
  else if ComboBoxAgama.ItemIndex = -1 then
    MessageDlg('Agama belum dipilih!', mtError, [mbOK], 0)
  else if RadioGroupStatus.ItemIndex = -1 then
    MessageDlg('Status belum dipilih!', mtError, [mbOK], 0)
  else
  begin
    ADODataSetDosen.Append;
    ADODataSetDosen.FieldValues['nidn'] := EditNIDN.Text;
    ADODataSetDosen.FieldValues['nama_lengkap'] := EditNamaLengkap.Text;
    ADODataSetDosen.FieldValues['tanggal_masuk'] := DateTimePickerTanggalMasuk.Date;
    ADODataSetDosen.FieldValues['alamat'] := EditAlamat.Text;
    ADODataSetDosen.FieldValues['nomor_wa'] := EditNomorWA.Text;
    ADODataSetDosen.FieldValues['agama'] := ComboBoxAgama.Items[ComboBoxAgama.ItemIndex];
    ADODataSetDosen.FieldValues['status'] := RadioGroupStatus.Items[RadioGroupStatus.ItemIndex];
    ADODataSetDosen.Post;
    MessageDlg('Data dosen berhasil ditambahkan!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataDosen.DBGridDosenCellClick(Column: TColumn);
begin
  EditNIDN.Text := ADODataSetDosen.FieldValues['nidn'];
  EditNamaLengkap.Text := ADODataSetDosen.FieldValues['nama_lengkap'];
  DateTimePickerTanggalMasuk.Date := ADODataSetDosen.FieldValues['tanggal_masuk'];
  EditAlamat.Text := ADODataSetDosen.FieldValues['alamat'];
  EditNomorWA.Text := ADODataSetDosen.FieldValues['nomor_wa'];
  ComboBoxAgama.Text := ADODataSetDosen.FieldValues['agama'];
  if ADODataSetDosen.FieldValues['status'] = RadioGroupStatus.Items[0] then
    RadioGroupStatus.ItemIndex := 0
  else
    RadioGroupStatus.ItemIndex := 1;

  // matikan tombol tambah dan nyalakan tombol ubah dan hapus
  ButtonTambah.Enabled := False;
  ButtonUbah.Enabled := True;
  ButtonHapus.Enabled := True;
end;

procedure TDataDosen.ButtonUbahClick(Sender: TObject);
begin
  if EditNIDN.Text = '' then
    MessageDlg('NIDN belum diisi!', mtError, [mbOK], 0)
  else if EditNamaLengkap.Text = '' then
    MessageDlg('Nama lengkap belum diisi!', mtError, [mbOK], 0)
  else if EditAlamat.Text = '' then
    MessageDlg('Alamat belum diisi!', mtError, [mbOK], 0)
  else if EditNomorWA.Text = '' then
    MessageDlg('Nomor WA belum diisi!', mtError, [mbOK], 0)
  else if ComboBoxAgama.ItemIndex = -1 then
    MessageDlg('Agama belum dipilih!', mtError, [mbOK], 0)
  else if RadioGroupStatus.ItemIndex = -1 then
    MessageDlg('Status belum dipilih!', mtError, [mbOK], 0)
  else
  begin
    ADODataSetDosen.Edit;
    ADODataSetDosen.FieldValues['nidn'] := EditNIDN.Text;
    ADODataSetDosen.FieldValues['nama_lengkap'] := EditNamaLengkap.Text;
    ADODataSetDosen.FieldValues['tanggal_masuk'] := DateTimePickerTanggalMasuk.Date;
    ADODataSetDosen.FieldValues['alamat'] := EditAlamat.Text;
    ADODataSetDosen.FieldValues['nomor_wa'] := EditNomorWA.Text;
    ADODataSetDosen.FieldValues['agama'] := ComboBoxAgama.Items[ComboBoxAgama.ItemIndex];
    ADODataSetDosen.FieldValues['status'] := RadioGroupStatus.Items[RadioGroupStatus.ItemIndex];
    ADODataSetDosen.Post;
    MessageDlg('Data dosen berhasil diubah!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataDosen.ButtonHapusClick(Sender: TObject);
begin
  if MessageDlg('Ingin menghapus data dosen ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADODataSetDosen.Delete;
    MessageDlg('Data Dosen berhasil dihapus!', mtInformation, [mbOK], 0);

    Reset;
  end;
end;

procedure TDataDosen.EditCariChange(Sender: TObject);
begin
  ADODataSetDosen.Active := False;
  ADODataSetDosen.CommandText := 'SELECT * FROM dosen WHERE nama_lengkap LIKE "%' + EditCari.Text + '%"';
  ADODataSetDosen.Active := True;
end;

end.

