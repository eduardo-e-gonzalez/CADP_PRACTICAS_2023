//d) program punteros;
type
    cadena = string[50];
    puntero_cadena = ^cadena;

procedure cambiarTexto(pun: puntero_cadena);
begin
    new(pun);               //Se crea un nuevo puntero
    pun^:= 'Otro texto';    //Se le asigna un nuevo valor
end;

var
    pc: puntero_cadena;     //
begin
    new(pc);                //Se crea un nuevo puntero
    pc^:= 'Un texto';       //Se le asigna un valor
    writeln(pc^);           //Un texto
    cambiarTexto(pc);       //Se llama al procedimiento
    writeln(pc^);           //Un texto
end.