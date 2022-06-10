//La versión de Solidity a usar será la 0.8.10
pragma solidity *0.8.10;


contract Estudiante
{
//se declaran variables tanto para el nombre como el apellido como el curso
    string private _name;
    string private _surname;
    string private _course;    

    //
    address private _teacher;


    //creamos un mapping que asocia el valor de el
    //nombre de la materia con la nota de la materia
    mapping(string => uint8)private notas_materias;

    constructor(string memory name_, string memory surname_, string memory division_)
    {
        _name = name_;
        _surname = surname_;
        _course = division_;
        _teacher = msg.sender; 
    }

    // la funcion surmane() devuelve el apellido cuando es llamda
    function apellido() public view returns (string memory)
    {
        return _surname;
    }

    //funcion que devuelve apellido seguido por nombre
    function nombre_completo() public view returns (string memory)
    {
        return string(abi.encodePacked(_surname, _name));
    }

    //la funcion asococia un valor numerico (nota) a una materia y los guarda como mapping
    function set_nota_materia(uint8 nota_, string memory materia_) public
    {
        require(msg.sender == _teacher, "solo el profesor puede acceder a esta informacion");

        notas_materias[materia_] = nota_;

        ArrayMaterias[materia_];
    }

    //obtiene el valor (nota) correspondiente para el string (materia)
    function nota_materia(string memory materia_) public view returns (uint8)
    {
        return notas_materias[materia_];
    }

    //en caso de que el valor almacenado en el mapping para el indice 
    //materia sea mayor a 60 va a entrar al if y devolver trueen caso 
    //de que no sea mayor a 60 va a entrar en el else y devolver false
    function aprobo(string memory materia_) public view returns (bool)
    {
        if (materia_ >= 60)
        {
            return true;
        }
        else 
        {
            return false;
        }
    }

    //Devuelve el promedio entre todos los valores de nota_materia
    //para hacer esto utiliza el ArrayMateria como las keys para cada
    //valor de nota_materia.
    function promedio() public view returns (int)
    {
        string[] ArrayMaterias;
        
        int _promedio;

        for (int i = 0; i <= ArrayMaterias.Length; i++)
        {
            _promedio += nota_materia[ArrayMaterias[i]];
        }

        _promedio = _promedio / ArrayMateras.Length;
        
        return _promedio; 
    }

    //devuelve la división
    function curso() public view returns (string memory)
    {
        return _course; 
    }

}