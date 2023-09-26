//4) Indicar los valores que imprimen los siguientes programas en Pascal.
program punteros;
type
    cadena = string[50];
    puntero_cadena = ^cadena;
var
    pc: puntero_cadena;
begin
    pc^:= 'un nuevo texto'; NO SE PUEDE ASIGNAR UN VALOR A UN PUNTERO SIN ANTES CREARLO(NEW(PC);PC^)
    new(pc);
    writeln(pc^);//TIRA ERROR 
end.