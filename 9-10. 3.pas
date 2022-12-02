const n=10;
var i, f, lastnum:integer;
a:array[1..n] of integer;
function last(i,f:integer; lastn:integer):integer;
begin
  lastn:=1;
  for i:=1 to n do
  begin
    if (a[i]<0) then
      lastn:=i;
  end;
  last:=lastn;
end;
begin 
  lastnum:=1;
  for i:=1 to n do
  begin
    read(a[i]);
  end;
  for i:=1 to n do
  begin
    write(a[i],' ');
  end;
  lastnum:=last(i,f,lastnum);
  writeln;
  write('Номер последнего отрицательного элемента массива: ', lastnum)
end.
//93 -51 368 2 -5 43 98 -2 -586 1