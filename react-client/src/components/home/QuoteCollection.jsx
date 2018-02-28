import React from "react";
import QuoteItem from "./QuoteItem.jsx";

const QuoteCollection = (props) => (
  <div>
    {props.quotes.map((quote, idx) => <QuoteItem quote={quote} key={idx} /> )}
  </div>
);

export default QuoteCollection;
