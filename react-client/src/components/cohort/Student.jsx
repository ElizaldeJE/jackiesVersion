import React from "react";

const Student = (props) => (
  <div style={{color: "#FEFEFE"}}>
    <img className="profile-picture" src={`https://i.imgur.com/${props.student.picture_path}.jpg`}/>
    <span>{props.student.first_name}</span>
    <span>{props.student.last_name}</span>
    <span>{props.student.github_link}</span>
  </div>
);

export default Student;
