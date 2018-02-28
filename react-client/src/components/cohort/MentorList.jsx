import React from "react";
import Mentor from "./Mentor.jsx"

const MentorList = (props) => (
  <div style={{color: "#FEFEFE"}}>
    {props.mentors.map(mentor => <Mentor mentor={mentor} key={mentor.id} />)}
  </div>
);

export default MentorList;
