program HitungKemunculanHuruf;
uses crt;

var
  kalimat: string;
  jumlahHuruf: array['A'..'Z'] of integer;
  ulang: string;
  
procedure Inisialisasi; //awal awal jumlah dari tiap huruf harus 0
 var
  huruf: char; //huruf adalah variabel lokal
 begin
  for huruf := 'A' to 'Z' do
    jumlahHuruf[huruf] := 0;
end;

procedure Hitung(const kalimat: string); //proses menghitung jumlah kemunculan dari tiap huruf
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

procedure Hasil; //menampilkan hasil kemunculan tiap huruf
 var
  huruf: char;
 begin
  writeln('Jumlah kemunculan setiap huruf dalam kalimat:');
  for huruf := 'A' to 'Z' do
  begin
    if jumlahHuruf[huruf] > 0 then
      writeln(huruf, ': ', jumlahHuruf[huruf]); 
  end;
 writeln; 
end;

begin
  repeat
    clrscr;
    textcolor(green);writeln('======================');
    writeln(' Program Hitung Huruf');
    writeln('======================'); textcolor(white);
    writeln;
    write('Masukkan kalimat: ');
    readln(kalimat);

    Inisialisasi;
    Hitung(kalimat);
    Hasil;

    write('Mau ngulang lagi? (Y/N): ');
    readln(ulang);
  until UpCase(ulang) <> 'Y';

  writeln('Okay');
  readln;
end.
