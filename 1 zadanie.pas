Program zad1;
var A:array[1..10] of Integer; i: Integer;h:boolean;
begin
  write('Массив = ');
  for i:=1 to 10 do
    begin
    A[i]:= random(1,5);
    write(A[i]:2);
    end;
    writeln;
  
  h := true;
  for i := 1 to 9 do
  begin
    if i mod 2 = 0 then
    begin
      if A[i] > A[i+2] then
      begin
      h := false;
      Break;
      end;
    end;
  end;
  
  if h = True then
    Writeln('Массив является монотонным')
  else
    Writeln('Массив не является монотонным');
end.