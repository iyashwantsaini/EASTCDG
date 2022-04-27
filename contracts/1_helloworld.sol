pragma solidity ^0.4.17; //solidity version to use

contract Inbox { //similar to class name
    string public message; //storage variable -> automatically stored with the contract on the blockchain
    //local variable are temporarily created while runnning the contract.

    function Inbox(string initialMessage) public { //constructor function
        message=initialMessage;
    }

    function setMessage(string newMessage) public {
        message=newMessage;
    }

    //function name, funtion type, return type (only used in views and constants)
    //a getter is already created for every storage variable defined in the contract.
    //so this function is not actually required.
    function getMessage() public view returns (string) {
        return message;
    }
}

