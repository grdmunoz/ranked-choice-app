require 'voting/voter'

module Votes
  class API < Grape::API
    format :json

    resource :ping do
      get do
        { hello: 'world' }
      end
    end

    resource :candidates do
      get do
        Voting::Voter.new.candidates
      end

      get ':id' do
        Voting::Voter.new.candidate(params[:id])
      end
    end

    resource :rounds do
      get do
        Voting::Voter.new.rounds
      end

      get ':id' do
        Voting::Voter.new.round(params[:id])
      end
    end
  end
end
