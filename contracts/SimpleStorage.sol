// EVM : Etherium Virtual Machine
// Etherium, Polygon, Arbitrum, Optimism, Zksync


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256  myFavoriteNumber; // myFavoriteNumber is a storage varible bcz. any variable outside of function & inside of cotract is bydefult storage varible.

    //                   (favoriteNumber, name)
    // person public rajib = person(7, "Rajib");
    // Person public Rajib = Person({favoriteNumber: 7, name: "Rajib"});
    // Person public Harry = Person({favoriteNumber: 349, name: "Harry"});
    // Person public Patrick = Person({favoriteNumber: 29, name: "Patrick"});

    // a basic function
    function store(uint256 _favorateNumber) public virtual {
        myFavoriteNumber = _favorateNumber;
    }

    // View: Read a stored number : here we are not changing the state of the block chain. So there will be no transaction.
    // We can also use Read functions to read from a contract address and not an instance of a contract.
    // there is Pure also where we don't have to do transaction we will learn better letar.
    // Retreve used to only call or read from smart contract which not need transaction but need gas cost unlike store function.
    // return : used to get value of favoriteNumber and of uint256.
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // struct : to save user data in custom, person is a variavle name
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public rajib = Person({favoriteNumber: 6, name: "Rajib"});
    // Person public pat = Person({favoriteNumber: 34, name: "Pat"});

    // array : is a data type, so we need memory in order to store the list of favorite numbers.// 
    // uint256[] listOfFavoriteNumbrs;
    // dynamic array : it can be any size, static array : if we put [value] it can any size upto max size of that value like 3 or 8 or 893
    Person[] public listOfPeople; // []

    // Memory Calldata Storage / Memory & Calldata are temporary location (only for one time). diff. btweeen them is Calldata can't be changed but Memory can be change.
    // Storage : is permanet location variable.
    // function is temporary so we can't put Storage here. only struct array mapping will get Memory or Calldata
    // uint256 is premitive data type so we can't put Memory or Calldata here.
    function addPerson(string memory name, uint256 _favoriteNumber) public {
        // _name = "cat";
        // Person memory newPerson = Person(_favorateNumber, _name);
        // listOfPeople.push(newPerson); // push : is used to push the data in dynamic array.
        // or
        listOfPeople.push(Person(_favoriteNumber, name));
        // mapping
        nameToFavoriteNumber[name] = _favoriteNumber;
    }
    // mapping
    mapping(string => uint256) public nameToFavoriteNumber;

}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}