import React from "react";
import styled from "styled-components";
import data from "data/mock-results.json";
import PageWrapper from "components/PageWrapper";
import { Link } from "react-router-dom";

const Footer = styled.div`
  display: flex;
  align-items: space-between;
  justify-content: center;
  padding: 2rem;
`;

const CandidateList = () => {
  const roundNumber = 2;
  const round = data.rounds[roundNumber] as { [candidateId: string]: number };

  return (
    <PageWrapper>
      <ul>
        {Object.keys(round).map((id) => (
          <li>
            <strong>{id}</strong>: {round[id]}
          </li>
        ))}
      </ul>
      <Footer>
        <Link to={`/rounds/${roundNumber - 1}`}>Previous Round</Link>
        <Link to={`/rounds/${roundNumber + 1}`}>Next Round</Link>
      </Footer>
    </PageWrapper>
  );
};

export default CandidateList;
