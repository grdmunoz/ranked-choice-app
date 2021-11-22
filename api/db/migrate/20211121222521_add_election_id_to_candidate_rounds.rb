class AddElectionIdToCandidateRounds < ActiveRecord::Migration[6.1]
  def change
   add_reference :candidate_rounds, :election, index: true
  end
end
