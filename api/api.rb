module Votes
  class API < Grape::API
    format :json

    resource :ping do
      get do
        { hello: 'world' }
      end
    end
  end
end
