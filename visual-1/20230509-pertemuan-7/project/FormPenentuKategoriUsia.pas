unit FormPenentuKategoriUsia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Utilities;

type
  TPenentuKategoriUsia = class(TForm)
    LabelUsia: TLabel;
    TrackBarUsia: TTrackBar;
    LabelUsiaInput: TLabel;
    LabelKategori: TLabel;
    LabelKategoriOutput: TLabel;
    procedure TrackBarUsiaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PenentuKategoriUsia: TPenentuKategoriUsia;

implementation

{$R *.dfm}

procedure TPenentuKategoriUsia.TrackBarUsiaChange(Sender: TObject);
var
  usia: Integer;
  kategori: string;
begin
  // usia didapat dari posisi trackbar
  usia := TrackBarUsia.Position;
  // set caption label diatas trackbar agar sinkron dengan usia
  LabelUsiaInput.Caption := IntToStr(usia);

  // digunakan case of karena tipe data usia integer dan agar lebih mudah dibaca
  case usia of
    0..5: kategori := 'Balita';
    6..11: kategori := 'Anak-anak';
    12..16: kategori := 'Remaja';
    17..35: kategori := 'Dewasa';
    36..60: kategori := 'Orang tua';
    61..90: kategori := 'Lansia';
    91..200: kategori := 'Sepuh';
  end;
  // set caption label dibawah dengan kategori
  LabelKategoriOutput.Caption := kategori;
end;

procedure TPenentuKategoriUsia.FormShow(Sender: TObject);
begin
  // tutup menu utama kalau form ini di tampilkan
  TutupMenuUtama;
end;

procedure TPenentuKategoriUsia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // tampilkan kembali menu utama kalau form ini di tutup
  TampilkanMenuUtama;
end;

end.
