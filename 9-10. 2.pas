const n=10;
var i,maxindex,maxnum,maxmin,mn:integer;
a:array[1..n] of integer;
{procedure mx(var i:integer; var maxnum,maxindex:integer);
begin
  maxindex:=1;
  maxnum:=a[1];
  for i:=2 to n do
  begin
    if a[i]>maxnum then begin
      maxnum:=a[i];
      maxindex:=i;
    end; 
  end;
end;}
procedure abs(i:integer; mn,maxmin:integer);
begin
  mn:=32767;
  for i:=1 to n do
  begin
    if abs(a[i])<mn then
      mn:=abs(a[i])
  end;
  maxmin:=a[1];
  for i:=2 to n do
    begin
         if (a[i]<0) and (a[i]>maxmin) then
      maxmin:=a[i];
      end;
      write('Минимальный по модулю элемент: ', mn, ', Максимальный отрицательный элемент: ', maxmin)
end;
begin
  for i:=1 to n do
    begin
      read(a[i])
      end;
      for i:=1 to n do
      begin
        write(a[i],', ');
      end;
      {mx(i,maxnum,maxindex);}
      abs(i,mn,maxmin);
      writeln;
      {write('Максимальный элемент массива ', maxnum, ', его номер ', maxindex)}
end.