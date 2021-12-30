// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleProg{
    struct Student{
        string name;
        uint256 marks;
    }

    Student[] public students;
    mapping (string => uint256) public studentMarks;

    function addStudent(string memory _name, uint256 _marks) public{
        students.push(Student({name:_name, marks:_marks}));
        studentMarks[_name]=_marks;
    }

    function passOrFail(string memory _name) view public returns(string memory _status){
        if(studentMarks[_name] > 80){
            _status= "PASS";
        }
        else{
            _status ="FAIL";
        }
        return _status;
    }
}
