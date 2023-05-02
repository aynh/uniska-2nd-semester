unit FormMenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMenuUtama = class(TForm)
    LabelHeader: TLabel;
    ButtonFormKonversiSuhu: TButton;
    ButtonFormBangunRuang: TButton;
    ButtonAbout: TButton;
    procedure ButtonFormKonversiSuhuClick(Sender: TObject);
    procedure ButtonFormBangunRuangClick(Sender: TObject);
    procedure ButtonAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuUtama: TMenuUtama;

implementation

uses FormKonversiSuhu, FormBangunRuang, Biodata;

{$R *.dfm}

procedure TMenuUtama.ButtonFormKonversiSuhuClick(Sender: TObject);
begin
  KonversiSuhu.Show;
end;

procedure TMenuUtama.ButtonFormBangunRuangClick(Sender: TObject);
begin
  BangunRuang.Show;
end;

procedure TMenuUtama.ButtonAboutClick(Sender: TObject);
begin          
  About.Show;
end;

end.
