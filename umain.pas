unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    cbStartDay: TComboBox;
    cbEndDay: TComboBox;
    cbStartMonth: TComboBox;
    cbStartYear: TComboBox;
    cbEndMonth: TComboBox;
    cbEndYear: TComboBox;
    procedure cbStartDayChange(Sender: TObject);
    procedure cbStartMonthChange(Sender: TObject);
    procedure cbStartYearChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.cbStartDayChange(Sender: TObject);
begin
  if cbEndYear.ItemIndex <= cbStartYear.ItemIndex then
  if cbEndMonth.ItemIndex <= cbStartMonth.ItemIndex then
  if cbEndDay.ItemIndex < cbStartDay.ItemIndex then
  cbEndDay.ItemIndex := cbStartDay.ItemIndex;
end;

procedure TForm1.cbStartMonthChange(Sender: TObject);
begin
  if cbEndYear.ItemIndex <= cbStartYear.ItemIndex then
  if cbEndMonth.ItemIndex < cbStartMonth.ItemIndex then
  cbEndMonth.ItemIndex := cbStartMonth.ItemIndex;
  cbStartDayChange(Sender);
end;

procedure TForm1.cbStartYearChange(Sender: TObject);
begin
  if cbEndYear.ItemIndex < cbStartYear.ItemIndex then
  cbEndYear.ItemIndex := cbStartYear.ItemIndex;
  cbStartMonthChange(Sender);
end;

end.

