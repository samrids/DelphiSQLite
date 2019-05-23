unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Param,
  System.UITypes,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule2.FDQuery1.active := false;
  DataModule2.FDQuery1.Params.ParamByName('id').AsInteger := 0;
  DataModule2.FDQuery1.active := true;

  Button3.Enabled := (DataModule2.FDQuery1.active = true);
  Button4.Enabled := Button3.Enabled;
  Button5.Enabled := Button3.Enabled;

  Button2.Enabled := Button3.Enabled;
  Button6.Enabled := Button3.Enabled;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  err: integer;
begin
  DataModule2.FDConnection1.StartTransaction;
  DataModule2.FDQuery1.CheckBrowseMode;
  err := DataModule2.FDQuery1.ApplyUpdates(0);
  try
    if err = 0 then
    begin
      DataModule2.FDConnection1.Commit;
      DataModule2.FDQuery1.RefreshRecord(true);
    end;
  except
    DataModule2.FDConnection1.Rollback;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form3 := tform3.create(Self);
  if form3.ShowModal = mrOk then
  begin
    DataModule2.FDConnection1.StartTransaction;
    DataModule2.FDQuery1.Append;
    DataModule2.FDQuery1blog_title.AsString := form3.Edit1.Text;
    DataModule2.FDQuery1blog_remark.AsString := form3.Edit2.Text;
    DataModule2.FDQuery1.Post;
    if DataModule2.FDQuery1.ApplyUpdates(0) = 0 then
    begin
      try
        DataModule2.FDConnection1.Commit;
        // DataModule2.FDQuery1.RefreshRecord(true);
      except
        DataModule2.FDQuery1.CancelUpdates;
        DataModule2.FDConnection1.Rollback;
      end;
    end;
  end;
  form3.Close;
  form3 := nil;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  form3 := tform3.create(Self);
  form3.Edit1.Text := DataModule2.FDQuery1blog_title.AsString;
  form3.Edit2.Text := DataModule2.FDQuery1blog_remark.AsString;
  if form3.ShowModal = mrOk then
  begin
    DataModule2.FDConnection1.StartTransaction;
    DataModule2.FDQuery1.Edit;
    DataModule2.FDQuery1blog_title.AsString := form3.Edit1.Text;
    DataModule2.FDQuery1blog_remark.AsString := form3.Edit2.Text;
    DataModule2.FDQuery1.Post;
    if DataModule2.FDQuery1.ApplyUpdates(0) = 0 then
    begin
      try
        DataModule2.FDConnection1.Commit;
        DataModule2.FDQuery1.RefreshRecord(true);
      except
        DataModule2.FDQuery1.CancelUpdates;
        DataModule2.FDConnection1.Rollback;
      end;
    end;
  end;
  form3.Close;
  form3 := nil;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (MessageDlg('Are you sure to delete this item ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
  begin
    DataModule2.FDConnection1.StartTransaction;
    DataModule2.FDQuery1.Delete;
    if DataModule2.FDQuery1.ApplyUpdates(0) = 0 then
    begin
      try
        DataModule2.FDConnection1.Commit;
      except
        DataModule2.FDQuery1.CancelUpdates;
        DataModule2.FDConnection1.Rollback;
      end;
    end;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  DataModule2.FDQuery1.Cancel;
  DataModule2.FDQuery1.UndoLastChange(true);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DataModule2.FDConnection1.Params.Clear;

  DataModule2.FDConnection1.Params.Add('Database=D:\Awarasoft\test_Sqlite\awaraBlog.db');
  DataModule2.FDConnection1.Params.Add('DriverID=SQLite');
  Button3.Enabled := (DataModule2.FDQuery1.active = true);
  Button4.Enabled := Button3.Enabled;
  Button5.Enabled := Button3.Enabled;

  Button2.Enabled := Button3.Enabled;
  Button6.Enabled := Button3.Enabled;
end;

end.
