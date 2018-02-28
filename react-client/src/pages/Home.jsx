import $ from "jquery";
import React from "react";
import {Link} from "react-router-dom";

import QuoteCollection from "../components/home/QuoteCollection.jsx";
import HomeGallery from "../components/home/HomeGallery.jsx";
import HolaCode from "../components/home/HolaCode.jsx";

class Home extends React.Component {
  constructor() {
    super();
    this.state = {
      quotes: []
    };
    this.getQuotes = this.getQuotes.bind(this);
  }

  componentDidMount(){
    this.getQuotes();
  }

  getQuotes() {
    $.ajax({
      type:'GET',
      url: '/home',
      success: function(data) {
        this.setState({ quotes: data })
      }.bind(this),
      error: function(xhr, status, err){
        console.error(err)
      }.bind(this)
    });
  }

  render() {
    return (
      <div>
        <HolaCode />
        <QuoteCollection quotes={this.state.quotes}/>
        <div>
          <h2><Link to='cohort'>GET TO KNOW OUR COHORT</Link></h2>
        </div>
        <HomeGallery />
      </div>
    );
  }
}

export default Home;
