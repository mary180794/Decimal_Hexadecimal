with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO , ada.Integer_Text_IO;

procedure Main is
   i,j : Integer;
   b,hex :Integer;
   arreglo : array(0..20)  of Integer;
   dig_hexa : array(0..15) of Character;


begin

   dig_hexa(0..15) := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');

   Put_Line("conversion de decimal a hexadecimal ");
   Put_Line("");
   Put_Line("Dame el numero a convertir: ");
   Get(b);

   i := 0;
   j:=0;
   if(b<=15) then
      Put(dig_hexa(b));
   else

  -- for i in 1..20 loop
    --  arreglo(i) :=2;
     -- end loop;


    while b /= 0 loop
     arreglo(i) := b mod 16;
     b:=b/16;
         i:=i+1;

   end loop;


  --  for i  in 1..20 loop
    --Put(arreglo(i));
   --end loop;

   hex:=i;

for i in  reverse  0..hex-1 loop
   --if arreglo(i)/=16 then
         j:=arreglo(i);
         Put(dig_hexa(j));

      end loop;
      end if;

end Main;

