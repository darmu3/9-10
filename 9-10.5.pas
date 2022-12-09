const
  n = 10;

var
  a: array[1..n] of integer;
  arr: array[1..n] of integer;

procedure replacemultiple(minelem1, minelem2, maxelem1, maxelem2, freq1, freq2: integer);
begin
  var x, y: integer; x := 0; y := 0;
  for var i := 1 to n do    //проверка первого массива на первый элемент кратный 5
  begin
    if a[i] mod 5 = 0 then
    begin
      freq1 := i;
      x := 1;
    end;
    if x = 1 then break;
  end;               //конец проверки
  for var j := 1 to n do   //проверка второго массива на первый элемент кратный 5
  begin
    if arr[j] mod 5 = 0 then
    begin
      freq2 := j;
      y := 1;
    end;
    if y = 1 then break;
  end;               //конец проверки 
  maxelem1 := a[1];
  for var i := 2 to n do            //поиск максимального элемента в первом массиве
  begin
    if (a[i] > a[maxelem1]) then
      maxelem1 := i;
  end;                      //конец поиска
  maxelem2 := arr[1];
  for var j := 2 to n do            //поиск максимального элемента массива во втором массиве
  begin
    if (arr[j] > arr[maxelem2]) then
      maxelem2 := j;
  end;                      //конец поиска
  minelem1 := a[1];
  for var i := 2 to n do            //поиск минимального элемента в первом массиве
  begin
    if (a[i] < a[minelem1]) then
      minelem1 := i;
  end;                      //конец поиска
  minelem2 := arr[1];
  for var j := 2 to n do            //поиск минимального элемента массива во втором массиве
  begin
    if (arr[j] < arr[minelem2]) then
      minelem2 := j;
  end;                      //конец поиска
  for var q := 1 to n do    //замена
  begin
    if freq1 < freq2 then
    begin
      if q = freq1 then
        a[maxelem1] := 0
    end
    else if q = minelem1 then
    begin
      a[q] *= 2;
      minelem1 += 1;
    end;
    if freq2 < freq1 then
    begin
      if q = freq2 then 
        arr[maxelem2] := 0
    end
    else if q = minelem2 then
    begin
      a[q] *= 2;
      minelem2 += 1;
    end;
  end;                 //конец замены
  println;
  print('Итоговые значения элементов массива a: ');
  for var i := 1 to n do
  begin
    print(a[i])
  end;
  println;
  print('Итоговые значения элементов массива arr: ');
  for var j := 1 to n do
  begin
    print(arr[j])
  end;
end;    //Конец подпрограммы

begin
  var minelem1, minelem2, maxelem1, maxelem2, freq1, freq2: integer;
  for var i := 1 to n do  //начало ввода данных в массивы
  begin
    read(a[i]);
  end;
  for var j := 1 to n do
  begin
    read(arr[j]);
  end;              //конец ввода данных в массивы
  println;
  print('Значения элементов масссива a: ');  //начинаем выводить значения массивов
  for var i := 1 to n do  
  begin
    print(a[i]);
  end;
  println;
  print('Значения элементов массива arr: ');
  for var j := 1 to n do
  begin
    print(arr[j]);
  end;
  replacemultiple( minelem1, minelem2, maxelem1, maxelem2, freq1, freq2);
end.  
//1 2 3 4 5 6 7 8 9 10
//3 2 5 6 7 16 7 8 4 2