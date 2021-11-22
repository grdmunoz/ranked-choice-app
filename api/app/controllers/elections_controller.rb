class ElectionsController < ApplicationController
    def index
        render json: Election.all.map { |c|  present_election(c) }
      end
    
      def show
        render json: present_election(Election.find(params[:id]))
      end
    
      private
    
      def present_election(election)
        {
          id: election.id,
          name: election.name,
          position: election.position,
          region: election.region,
          status: election.status,
          election_type: election.election_type,
          winning_candidate_id: election.winning_candidate_id
        }
      end

end
