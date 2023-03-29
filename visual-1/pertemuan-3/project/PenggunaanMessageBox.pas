unit PenggunaanMessageBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormPenggunaanMessageBox = class(TForm)
    LabelHeading: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPenggunaanMessageBox: TFormPenggunaanMessageBox;

implementation

{$R *.dfm}

procedure TFormPenggunaanMessageBox.Button1Click(Sender: TObject);
begin
  ShowMessage('Ini message box menggunakan ShowMessage');
end;

procedure TFormPenggunaanMessageBox.Button2Click(Sender: TObject);
begin
  MessageDlg('Ini message box menggunakan MessageDlg dengan tipe mtInformation',
    mtInformation, [mbOK], 0);
end;

procedure TFormPenggunaanMessageBox.Button3Click(Sender: TObject);
begin
  MessageDlg('Ini message box menggunakan MessageDlg dengan tipe mtWarning dengan tombol OK dan Cancel',
    mtWarning, [mbOK, mbCancel], 0);
end;

procedure TFormPenggunaanMessageBox.Button4Click(Sender: TObject);
begin
  MessageDlg('Ini message box menggunakan MessageDlg dengan tipe mtError dengan tombol Yes, No, dan Cancel',
    mtError, [mbYes, mbNo, mbCancel], 0);
end;

procedure TFormPenggunaanMessageBox.Button5Click(Sender: TObject);
begin
  MessageDlg('Ini message box menggunakan MessageDlg dengan tipe mtConfirmation dengan tombol Ok, Cancel, dan Retry',
    mtError, [mbOK, mbCancel, mbRetry], 0);
end;

end.

