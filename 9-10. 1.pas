const n = 10;
var i,k:integer;
a:array[1..n] of integer;
function v(i,f:integer): integer;
begin
  f:=1;
  for i:=1 to n do
    begin
  if i mod 2 = 0 then
    f:=f*a[i];
   end;
   v:=f;
end;
begin
    k:=1;
    for i:=1 to n do
    begin
      read(a[i])
      end;
      for i:=1 to n do
      begin
        write(a[i],', ');
      end;
        k:=v(k,a[i]); 
      writeln('Произведение четных элементов массива = ', k)
end.