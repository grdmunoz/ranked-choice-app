import React from "react";
import "./App.css";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import CandidateList from "pages/CandidateList";
import Results from "pages/Results";

function App() {
  return (
    <>
      <Router>
        <Switch>
          <Route path="/candidates" component={CandidateList} />
          <Route path="/" component={Results} />
        </Switch>
      </Router>
    </>
  );
}

export default App;
