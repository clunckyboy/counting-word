program HitungKemunculanHuruf;
uses crt;
var
  kalimat: string;
  jumlahHuruf: array['A'..'Z'] of integer;
  ulang: string;

procedure InisialisasiArray;
var
  huruf: char;
begin
  for huruf := 'A' to 'Z' do
    jumlahHuruf[huruf] := 0;
end;

procedure HitungKemunculanHuruf(const kalimat: string);
var
  i: integer;
  huruf: char;
begin
  for i := 1 to Length(kalimat) do
  begin
    huruf := UpCase(kalimat[i]);
    if huruf in ['A'..'Z'] then
      jumlahHuruf[huruf] := jumlahHuruf[huruf] + 1;
  end;
end;

procedure TampilkanHasil;
var
  huruf: char;
begin
  writeln('Jumlah kemunculan setiap huruf dalam kalimat:');
  for huruf := 'A' to 'Z' do
  begin
    if jumlahHuruf[huruf] > 0 then
      writeln(huruf, ': ', jumlahHuruf[huruf]);
  end;
end;

begin
  repeat
    clrscr;
    write('Masukkan kalimat: ');
    readln(kalimat);

    InisialisasiArray;
    HitungKemunculanHuruf(kalimat);
    TampilkanHasil;

    write('Mau ngulang lagi? (Y/N): ');
    readln(ulang);
  until UpCase(ulang) <> 'Y';

  writeln('okay');
  readln;
end.
