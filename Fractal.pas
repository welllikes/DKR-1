unit Fractal;

interface

uses GraphABC;

procedure ris(x1, y1, x2, y2, k: integer); // параметризация

implementation

procedure ris(x1, y1, x2, y2, k: integer);
begin
if k > 0 then // база
begin
var xn := (x1 + x2) div 2 + (y2 - y1) div 2; // декомпозиция
var yn := (y1 + y2) div 2 - (x2 - x1) div 2;
ris(x1, y1, xn, yn, k - 1);
ris(x2, y2, xn, yn, k - 1);
end
else
line(x1, y1, x2, y2);
end;

end.