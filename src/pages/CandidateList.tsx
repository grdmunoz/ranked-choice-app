import React from "react";
import data from "data/mock-results.json";
import PageWrapper from "components/PageWrapper";

const CandidateList = () => {
  return (
    <PageWrapper>
      <ul>
        {data.candidates.map((c: any) => (
          <li>{c.name}</li>
        ))}
      </ul>
    </PageWrapper>
  );
};

export default CandidateList;
