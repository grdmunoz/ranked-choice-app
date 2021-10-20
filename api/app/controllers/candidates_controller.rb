class CandidatesController < ApplicationController
  def index
    render json: Candidate.all.map { |c|  present_candidate(c) }
  end

  def show
    render json: present_candidate(Candidate.find(params[:id]))
  end

  private

  def present_candidate(candidate)
    {
      id: candidate.id,
      name: candidate.name,
      bio: candidate.bio
    }
  end
end
