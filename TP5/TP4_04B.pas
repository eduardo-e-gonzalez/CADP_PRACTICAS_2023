//b) program punteros;
type
    cadena = string[50]; //51 bytes
    puntero_cadena = ^cadena;
var
    pc: puntero_cadena;
begin
    new(pc);
    pc^:= 'un nuevo nombre';        //
    writeln(sizeof(pc^), ' bytes'); //51 bytes porque es un puntero a una cadena de 50 bytes 
    writeln(pc^);                   //4 bytes porque es un puntero
    dispose(pc);                    //borra el puntero
    new(pc);                        //no tiene sentido hacer un new y un dispose y luego volver a hacer un new
    pc^:= 'otro nuevo nombre';
    writeln(sizeof(pc^), ' bytes'); // 51 bytes porque es un puntero a una cadena de 50 bytes
    writeln(pc^);                   //4 bytes porque es un puntero
end.