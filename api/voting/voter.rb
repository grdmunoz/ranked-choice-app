require 'yaml'
require 'voting/election_decider'

module Voting
  class Voter
    attr_reader :election

    def initialize
      @election = ElectionDecider.default_election
      @election.decide!
    end

    def candidates
      return @candidates if @candidates

      data = YAML.load_file('voting/bios.yaml')['candidates']
      @candidates = election.candidate_names.map { |n| data.find { |c| c['name'] == n } }
    end

    def candidate(id)
      candidates.find { |c| c['id'] == id }
    end

    def candidate_id_for_name(name)
      candidates.find { |c| c['name'] == name }['id']
    end

    def rounds
      election.rounds.map do |r|
        r.reduce({}) do |id_round, (name, count)|
          id_round[candidate_id_for_name(name)] = count
          id_round
        end
      end
    end

    def round(id)
      rounds[id.to_i]
    end
  end
end
