import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter as Router, Route, hashHistory } from "react-router-dom";

import Home from "./pages/Home.jsx";
import Cohort from "./pages/Cohort.jsx";
import Student from "./pages/Student.jsx";

const app = document.getElementById("app");

ReactDOM.render(
  <Router history={hashHistory}>
    <div>
      <Route exact path="/" component={Home} />
      <Route exact path="/cohort" name="cohort" component={Cohort} />
      <Route path="/student(/:id)" name="student" component={Student} />
    </div>
  </Router>,
  app
);
