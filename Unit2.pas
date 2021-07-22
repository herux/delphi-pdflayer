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
var
  lPdfDownload: TDownloadURL;
  lstream: TMemoryStream;
begin
  lPdfDownload := TDownloadURL.Create;
  lstream := TMemoryStream.Create;
  try
    lPdfDownload.DownloadRawBytes(
      'http://api.pdflayer.com/api/convert?access_key=48fb4736ebb10deff2dc59583444d5ff&document_url=https://pdflayer.com/documentation',
      lstream
      );
    gtDocumentViewer1.LoadFromStream(lstream);
  finally
    lPdfDownload.Free;
  end;
end;

end.
