unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FMX.Controls.Presentation, FMX.StdCtrls, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FMX.Edit, fmx.gtxClasses, fmx.gtxDocumentViewer;

type
  TForm2 = class(TForm)
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTClient1: TRESTClient;
    MaterialOxfordBlueSB: TStyleBook;
    Button1: TButton;
    Edit1: TEdit;
    gtDocumentViewer1: TgtDocumentViewer;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if RESTClient1. then

  gtDocumentViewer1.LoadFromFile('pdflayer.pdf');
end;

end.
