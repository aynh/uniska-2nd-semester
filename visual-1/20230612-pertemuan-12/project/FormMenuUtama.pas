unit FormMenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormDataMahasiswa, FormDataDosen, StdCtrls;

type
  TMenuUtama = class(TForm)
    ButtonDataMahasiswa: TButton;
    ButtonDataDosen: TButton;
    procedure ButtonDataMahasiswaClick(Sender: TObject);
    procedure ButtonDataDosenClick(Sender: TObject);
    procedure TampilkanMenuUtama(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuUtama: TMenuUtama;

implementation

{$R *.dfm}

procedure TMenuUtama.ButtonDataMahasiswaClick(Sender: TObject);
begin
  MenuUtama.Hide; // sembunyikan menu utama
  DataMahasiswa.Show; // tampilkan form data mahasiswa
  
   // tampilkan kembali menu utama kalau form data mahasiswa dihapus
  DataMahasiswa.OnClose := TampilkanMenuUtama;
end;

procedure TMenuUtama.ButtonDataDosenClick(Sender: TObject);
begin
  MenuUtama.Hide; // sembunyikan menu utama
  DataDosen.Show; // tampilkan form data dosen

   // tampilkan kembali menu utama kalau form data dosen dihapus
  DataDosen.OnClose := TampilkanMenuUtama;
end;

procedure TMenuUtama.TampilkanMenuUtama(Sender: TObject; var Action: TCloseAction);
begin
  MenuUtama.Show;
end;

end.
