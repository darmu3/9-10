const n = 10;
var i,j,sum1,sum2:integer;
a:array[1..n] of integer;
arr:array[1..n] of integer;
procedure multiply(i,j:integer; sum1,sum2:integer); //Начало подпрограммы
begin
sum1:=1;
sum2:=1;
writeln;
for i:=1 to n do
begin
  if (a[i])>=0 then
    sum1:=sum1+a[i];
end;
for j:=1 to n do
begin
  if (arr[j])>=0 then
    sum2:=sum2+arr[j];
end;
if (sum1>sum2) then   //Начало проверки sum1>sum2
  for j:=1 to n do
begin
  arr[j]:=arr[j]*10;
end                  //Конец проверки
else if (sum2>sum1) then  //Начало проверки sum2>sum1
  for i:=1 to n do
begin
  a[i]:=a[i]*10;
end;                      //Конец проверки
Writeln;
write('Итоговые значения элементов массива a: ');
for i:=1 to n do
begin
  Write(a[i],', ')
end;
Writeln;
write('Итоговые значения элементов массива arr: ');
for j:=1 to n do
begin
  Write(arr[j],', ')
end;
end;    //Конец подпрограммы

begin
  for i:=1 to n do  //начало ввода данных в массивы
  begin
    read(a[i]);
  end;
  for j:=1 to n do
  begin
    read(arr[j]);
  end;              //конец ввода данных в массивы
  
  Writeln;
  write('Значения элементов масссива a: ');  //начинаем выводить значения массивов
  for i:=1 to n do  
  begin
    write(a[i],', ');
  end;
  writeln;
  write('Значения элементов массива arr: ');
  for j:=1 to n do
  begin
    write(arr[j],', ');
  end;                                        //конец вывода значений массивов
  multiply(i,j,sum1,sum2);                    //Используем процедуру
end.
//-6 -5 -4 -3 -2 6 7 5 4 8
//-7 -9 -4 -3 -8 1 1 1 1 1
