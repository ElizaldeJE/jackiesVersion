import React from "react";

const Mentor = (props) => (
  <div style={{color: "#FEFEFE"}}>
    <img className="profile-picture" src={`https://i.imgur.com/${props.mentor.picture_path}.jpg`}/>
    <span>{props.mentor.first_name}</span>
    <span>{props.mentor.last_name}</span>
    <span>{props.mentor.github_link}</span>
  </div>
);

export default Mentor;
