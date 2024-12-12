//SPDX-License-Identifier: MIT 
pragma solidity 0.8.24 ; // solidity  version. 
contract SimpleStorage{

                            // Basic Types: boolean , unit , int , address ,bytes. 
    uint myFaviourNumber; //default is 256 bit , intialazed zero if no value is given .
                          // uint256 [] listOfFavioritNumbers; //the same as the other arrays in other programming language.
    struct Person{
        uint256 faviourNumber;
        string name;
        
    }
    // Person public saeed=Person({faviourNumber:7,name:"saeed"});  //7,"saeed" you can use this as straight forward .
    // dynamic array 
    Person [] public persons;
    // static array  Person [n] public persons; the n is detrmine .
    // mapping
    mapping (string => uint256) public nameToFaviourtNumber;

   
    function store(uint256 _faviourNumber) public virtual  {
        myFaviourNumber=_faviourNumber;
    }
    

    //view , pure : not require gas to be preforemed . because is not changing the state.
    function retrive() public view   returns(uint256){
        return myFaviourNumber;
    }
    function addPerson(string memory _name , uint256 _favoriteNumber) public  {
        Person memory newPerson=Person (_favoriteNumber,_name);
        nameToFaviourtNumber[_name]=_favoriteNumber; // if the object or element is not there in the mapping variable will retrurn the default is return of the datatype.
        persons.push(newPerson);
    }
}
contract SimpleStorage2{

}
contract SimpleStorage3{

}