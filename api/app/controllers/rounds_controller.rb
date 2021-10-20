class RoundsController < ApplicationController
  def index
    rounds = Round.all.sort do |r1, r2|
      r2.candidate_rounds.count <=> r1.candidate_rounds.count
    end

    render json: rounds.map { |r| present_round(r) }
  end

  def show
    render json: present_round(Round.find(params[:id]))
  end

  private

  def present_round(round)
    round.candidate_rounds.reduce({}) do |payload, rc|
      payload[rc.candidate_id] = rc.votes
      payload
    end
  end
end
