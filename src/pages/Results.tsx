import React, { useState } from "react";
import styled from "styled-components";
import PageWrapper from "components/PageWrapper";
import data from "data/mock-results.json";

const ResultsContainer = styled.div`
  margin: 0 auto;
  max-width: 700px;
`;

const ResultsRow = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid #e7e6e5;
  padding: 1rem 0.5rem;
`;

const ResultHeader = styled.div`
  color: #605f5c;
  font-weight: 500;
`;

const RoundNav = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 1.5rem;
  background-color: #f9f8f7;
  font-size: 1.125rem;
  font-weight: 500;
`;

const RoundLink = styled.div`
  margin: 1rem;
`;

const RoundPill = styled.div`
  background-color: black;
  padding: 0.5rem 1rem;
  border-radius: 2rem;
  color: white;
  margin: 1rem;
`;

const Results = () => {
  const [round, setRound] = useState(0);
  const roundData = data.rounds[round];
  return (
    <PageWrapper>
      <RoundNav>
        {data.rounds
          .reverse()
          .map((_, idx) =>
            idx === round ? (
              <RoundPill onClick={() => setRound(idx)}>
                Round {data.rounds.length - idx}
              </RoundPill>
            ) : (
              <RoundLink onClick={() => setRound(idx)}>
                Round {data.rounds.length - idx}
              </RoundLink>
            )
          )}
      </RoundNav>
      <ResultsContainer>
        <ResultsRow>
          <ResultHeader>RANKING</ResultHeader>
          <ResultHeader>VOTE PERCENTAGE</ResultHeader>
        </ResultsRow>
        {Object.keys(roundData).map((candidateId, idx) => (
          <ResultsRow key={`candidate-${candidateId}`}>
            <p>
              <span style={{ paddingRight: "1rem" }}>{idx + 1}</span>
              {data.candidates.find((c) => c["id"] === candidateId)?.name}
            </p>
            {(roundData as { [id: string]: number })[candidateId]}
          </ResultsRow>
        ))}
      </ResultsContainer>
    </PageWrapper>
  );
};

export default Results;
