import React from "react";
import "./App.css";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import CandidateList from "pages/CandidateList";
import Home from "pages/Home";
import Results from "pages/Results";
import Round from "pages/Round";

function App() {
  return (
    <>
      <Router>
        <Switch>
          <Route path="/results" component={Results} />
          <Route path="/rounds/:round" component={Round} />
          <Route path="/candidates" component={CandidateList} />
          <Route path="/" component={Home} />
        </Switch>
      </Router>
    </>
  );
}

export default App;
