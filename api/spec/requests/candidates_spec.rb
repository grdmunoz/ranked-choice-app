require 'rails_helper'

RSpec.describe '/candidates', type: :request do
  before do
    (1..5).each_with_index do |n|
      Candidate.create(name: "Candidate #{n}")
    end
  end

  it 'returns all candidates' do
    get '/candidates'

    body = JSON.parse(response.body)

    expect(body.count).to eq(5)
    body.each do |item|
      expect(item['name']).to match(/^Candidate \d$/)
    end
  end
end
