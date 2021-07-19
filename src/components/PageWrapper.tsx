import React from "react";
import styled from "styled-components";
import { Link } from "react-router-dom";

const Navbar = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 1.5rem;
`;

// TODO: make #13463B when on page,
// #605F5C when not on page
const NavLink = styled(Link)`
  font-weight: 500;
  text-decoration: none;
  color: black;
  margin: 0 1rem;
  font-size: 1.5rem;
`;

const SiteHeader = styled.h1`
  text-align: center;
  margin-bottom: 1.5rem;
`;

const PageWrapper: React.FC = ({ children }) => {
  return (
    <>
      <SiteHeader>Vote Viewer</SiteHeader>
      <Navbar>
        <NavLink to="/">Voting results</NavLink>
        <NavLink to="/candidates">Candidates</NavLink>
      </Navbar>
      {children}
    </>
  );
};

export default PageWrapper;
