import React from "react";
import styled from "styled-components";
import { Link } from "react-router-dom";

const Navbar = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`;

const PageWrapper: React.FC = ({ children }) => {
  return (
    <>
      <Navbar>
        <Link to="/">Home</Link>
        <Link to="/candidates">Candidates</Link>
        <Link to="/results">Results</Link>
      </Navbar>
      {children}
    </>
  );
};

export default PageWrapper;
