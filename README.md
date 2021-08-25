# Ranked Choice Visualizer App

You now find yourself as the sole maintainer of the "Vote Viewer" ranked-choice
election visualization app. The last developer built much of it, but there are a
few more things to take care of before we're ready to consider go-live. There
are some minor UI/UX issues and the data is still mocked. Can you help us get it
over the finish line?

## Instructions

Please follow the instructions for the variant suggested by your interview
coordinator.

- [Variant A](/instructions/variant-a.md)
- [Variant B](/instructions/variant-b.md)

## App Setup

1. Clone repo
2. `yarn install`
3. `yarn start`
4. Open `http://localhost:3000` in your browser

### Backend server (for API)

1. Install ruby if you don't already have it
1. `cd api`
1. `bundle install`
1. `bundle exec rackup`

Run `bundle exec rake routes` to see all endpoints on the API.

## Background: Ranked choice voting

In ranked-choice elections voters specify a prioritized list of their preferred
candidates. After tallying the first-choice votes, the candidate with the fewest
votes is eliminated. The next choice on the ballots for the eliminated candidate
is then given a vote. This process is repeated either until a candidate has a
majority of the votes or only two candidates remain. The candidate with the most
votes at the end of this process wins. You can read [more about ranked-choice
voting](https://en.wikipedia.org/wiki/Instant-runoff_voting) if you are so
inclined, but this description should be sufficient to understand this app.
