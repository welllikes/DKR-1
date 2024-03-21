uses GraphABC, Fractal;

var (m, wx, wy, g) := (100, 300, 300, 10);

Procedure KeyDown(k: integer);
begin
case k of
VK_Down: wy -= 10;
VK_Up: wy += 10;
VK_Left: wx += 10;
VK_Right: wx -= 10;
VK_Escape: halt(1); // выход
VK_A: if m < 500 then m += 10;
VK_Z: if m > 20 then m -= 10;
VK_S: if g < 15 then g += 1;
VK_X: if g > 2 then g -= 1;
end;
Window.Clear;
Fractal.ris(wx - m, wy, wx + m, wy, g); // Использование процедуры из модуля
Redraw;
end;

begin
SetWindowCaption('Фракталы: Кривая Дракона');
SetWindowSize(700, 512);
LockDrawing;
KeyDown(0);
OnKeyDown += KeyDown;
end.