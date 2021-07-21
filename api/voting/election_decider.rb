require 'csv'
require 'set'

module Voting
  class ElectionDecider
    attr_reader :vote_csv_name, :ballots, :eliminated_choices, :candidates, :num_ballots, :rounds

    def self.default_election
      ElectionDecider.new('voting/votes.csv')
    end

    def initialize(vote_csv_name)
      @vote_csv_name = vote_csv_name
    end

    def candidate_names
      rounds.first.keys
    end

    def decide!
      @candidates = {}
      @rounds = []
      @eliminated_choices = Set.new
      parse_ballots

      count_votes

      while !victor
        eliminate_candidate!
        count_votes
      end
    end

    private

    def inspect
      "VoteRecorder instance."
    end

    def count_votes
      ballots.each do |ballot|
        ballot[:choices].each do |choice|
          next if eliminated_choices.include?(choice)

          candidates[choice] ||= 0
          candidates[choice] += 1
          break # only take first countable candidate
        end
      end
    end

    def victor
      best = highest_candidate
      if candidates.keys.length <= 2 || percent_won(best) > 50
        return best
      end
    end

    def print_results
      puts "\n\nRound of voting complete. Standings:\n\n"
      sorted_candidates.each_with_index do |arr, idx|
        puts "#{idx + 1}. #{arr[0]} #{percent_won(arr[0])}% -- (#{arr[1]}/#{num_ballots})"
      end
    end

    def percent_won(choice)
      ((candidates[choice].to_f / num_ballots.to_f) * 100).round(2)
    end

    def eliminate_candidate!
      eliminated_choices << lowest_candidate
      @rounds << @candidates
      @candidates = {}
    end

    def sorted_candidates(to_sort = nil)
      (to_sort || candidates).sort_by do |name, count|
        -count
      end
    end

    def lowest_candidate
      sorted_candidates.last[0]
    end

    def highest_candidate
      sorted_candidates.first[0]
    end

    def parse_ballots
      @ballots = []
      puts "Loading ballots..."

      votes = CSV.read(vote_csv_name, headers: true)
      # assumes voter_id,voted_at,choice_1,choice_2,...,choice_n
      num_choices = votes.headers.length - 2

      votes.each do |vote_row|
        voted_at = vote_row['voted_at']

        @ballots << {
          voted_at: voted_at,
          choices: vote_row.fields(2..num_choices).compact # leave off blank columns
        }
      end

      @num_ballots = ballots.length
      if num_ballots < 1
        raise "Expected at least 1 valid ballot"
      end
      puts "Loaded #{num_ballots} ballots"
    end
  end
end
