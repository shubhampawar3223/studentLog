pragma solidity ^0.5.0;

contract Studentlog{
    uint rollNo=0;
    
    struct Student{
        uint rollNo;
        string name;
        uint birthYear;
        string mob_no;
        string grades;
    }
    mapping(uint => Student)  Students;
    
    function setInfo(uint _roll,string memory _name, uint _birthYear, string memory _mob_no, string memory _grades)public{
        require(_roll >0 ,"Check the roll no.");
        require(bytes(_name).length > 0, "Check Your Name");
        require(_birthYear > 2000 , "Check your Birthdate");
        require(bytes(_mob_no).length >0,"Check your mobile no");
        require(bytes(_grades).length >0,"Check your grades");
        
        rollNo++;
        Students[_roll] = Student(rollNo, _name, _birthYear,  _mob_no, _grades);
    }
    
    function getInfo(uint _rollNo) public view returns(uint,string memory,uint,string memory,string memory ){
        require(_rollNo > 0 && _rollNo <= rollNo,"Please Check Your Roll No.");
        Student memory s = Students[_rollNo];
        return (s.rollNo,s.name,s.birthYear,s.mob_no, s.grades);
    }
    
    
}