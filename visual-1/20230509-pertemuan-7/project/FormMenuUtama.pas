unit FormMenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMenuUtama = class(TForm)
    LabelHeader: TLabel;
    ButtonPenentuKelulusan: TButton;
    ButtonKategoriUsia: TButton;
    ButtonKonversiSatuanJarak: TButton;
    procedure ButtonPenentuKelulusanClick(Sender: TObject);
    procedure ButtonKategoriUsiaClick(Sender: TObject);
    procedure ButtonKonversiSatuanJarakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuUtama: TMenuUtama;

implementation

uses FormPenentuKelulusan, FormPenentuKategoriUsia,
  FormKonversiSatuanJarak;

{$R *.dfm}

procedure TMenuUtama.ButtonPenentuKelulusanClick(Sender: TObject);
begin
  // tampilkan form penentu kelulusan
  PenentuKelulusan.Show;
end;

procedure TMenuUtama.ButtonKategoriUsiaClick(Sender: TObject);
begin
  // tampilkan form penentu kategori usia
  PenentuKategoriUsia.Show;
end;

procedure TMenuUtama.ButtonKonversiSatuanJarakClick(Sender: TObject);
begin
  // tampilkan form konversi satuan jarak
  KonversiSatuanJarak.Show;
end;

end.
