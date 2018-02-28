import $ from "jquery";
import React from 'react';
import { Link } from 'react-router-dom';

import MentorList from "../components/cohort/MentorList.jsx";
import StudentList from "../components/cohort/StudentList.jsx";
import ImageCollections from "../components/cohort/ImageCollections.jsx";

class Cohort extends React.Component {
  constructor() {
    super();
    this.state = {
      mentors: [],
      students: []
    };
    this.getCohortProfiles = this.getCohortProfiles.bind(this);
  }

  componentDidMount(){
    this.getCohortProfiles();
  }

  getCohortProfiles() {
    $.ajax({
      type:'GET',
      url: '/cohort',
      success: function(data) {
        this.setState({
          mentors: data[0],
          students: data[1]
        })
      }.bind(this),
      error: function(xhr, status, err){
        console.error(err)
      }.bind(this)
    });
  }

  render(){
    return(
      <div>
        <div>
          <Link to='/'><h1> &lt;HOLACODE /&gt; YEARBOOK </h1></Link>
          <h1 style={{color: "#FEFEFE"}}> COHORT 1 </h1>
        </div>
        <MentorList mentors={this.state.mentors} />
        <StudentList students={this.state.students}/>
        <ImageCollections />
      </div>
    )
  }
}
export default Cohort;
