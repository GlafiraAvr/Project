library mp_UDF;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  ShareMem,
  SysUtils,
  Classes,
  PoteriFunc in 'PoteriFunc.pas',
  BlobFunc in 'BlobFunc.pas',
  StrFunc in 'StrFunc.pas',
  MathFunc in 'MathFunc.pas';

exports
  //PoteriFunc
  PoteriPromyv,
  PoteriOporzhn,
  PoteriPovrezhd,

  //BlobFunc
  Test,
  ImgBlob_To_JPGBlob,

  //StrFunc
  Str_to_Int,
  Is_HouseNum_Equal,

  //MathFunc
  BIT_OR,
  BIT_AND;
begin
  IsMultiThread := True;
end.

