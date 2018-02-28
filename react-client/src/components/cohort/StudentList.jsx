import React from "react";
import Student from "./Student.jsx"

const StudentList = (props) => (
  <div style={{color: "#FEFEFE"}}>
    {props.students.map(student => <Student student={student} key={student.id} />)}
  </div>
);

export default StudentList;
