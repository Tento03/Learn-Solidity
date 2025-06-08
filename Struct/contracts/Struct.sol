// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Struct {
   struct Student{
    string name;
    uint age;
   }

   Student[] students;

   function addStudents(string memory name,uint age) public  {
    students.push(Student(name,age));
   }

   function getStudents(uint index)public view returns (string memory , uint) {
    require(index<students.length, 'Index ga valid');
    Student memory s=students[index];
    return (s.name,s.age);
   }

   function studentCount() public view returns(uint)  {
    return students.length;
   }
}