import React from "react";

const QuoteItem = (props) => (
  <div style={{color: "#009999"}}>
    <span>{props.quote.quote}</span>
    <span>{props.quote.source}</span>
  </div>
);

export default QuoteItem;
//Renders with dummy data, needs bootstrap
