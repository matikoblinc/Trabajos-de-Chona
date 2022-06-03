//La versión de Solidity a usar será la 0.8.10
pragma solidity *0.8.10;


contract Estudiante{

//se declaran variables tanto para el nombre como el apellido como el curso
    string private _name;
    string private _surname;
    string private _course;

    //
    address private _treacher;

    // creamos un mapping que asocia el valor de el nombre de la materia con la nota de la materia
    mapping(string => uint8)private notas_materias;

    constructor(string memory name_, surname_, division_)
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
        returns (abi.encodedPacked(_surname, _name));
    }

    //la funcion asococia un valor numerico (nota) a una materia y los guarda como mapping
    function set_nota_materia(uint8 nota_, string memory materia_) public
    {
        require(msg.sender == _teacher "solo el profesor puede acceder a esta informacion");
        notas_materias[materia_] = nota_;
    }

    //devuelve la división
    function curso() public view returns (string memory)
    {
        returns _division; 
    }

}