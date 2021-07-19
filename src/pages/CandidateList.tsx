import React from "react";
import styled from "styled-components";
import data from "data/mock-results.json";
import PageWrapper from "components/PageWrapper";

const Candidates = styled.div`
  border-top: 1px solid #e7e6e5;
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-direction: row;
  flex-wrap: wrap;
  padding: 2rem;
`;

const Card = styled.div`
  border-radius: 8px;
  border: 1px solid #e7e6e5;
  padding: 1rem;
  max-width: 50%;
`;

const CandidateList = () => {
  return (
    <PageWrapper>
      <Candidates>
        {data.candidates.map((c: any) => (
          <Card>
            <h3>{c.name}</h3>
            <p>{c.bio}</p>
          </Card>
        ))}
      </Candidates>
    </PageWrapper>
  );
};

export default CandidateList;
