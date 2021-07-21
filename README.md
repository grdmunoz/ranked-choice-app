# Ranked Choice Visualizer App

## Setup

1. Clone repo
2. `yarn install`
3. `yarn start`
4. Open `http://localhost:3000` in your browser

### Backend server (for API)

1. Install ruby if you don't already have it
1. `cd api`
1. `bundle install`
1. `bundle exec rackup`
1. `bundle exec rake routes`

## Prompt TODO:

- Basic UI + Layout
- Round result UI
- get rake routes working
- README Instructions
- Ruby API for results

## Feature Requests

- Change Voting results / Candidates link colors when on page (see TODO in file)
- Show percentage of votes in round instead of total votes
- Result browser nav
  - Clicking back in my browser should send me to the last round of results I viewed
  - I should see the URL change as I navigate through each round
- Use data from API instead of mock data

## Known issues

- Console warnings are pretty noisy. Can you fix them?
- Clicking a round slightly shifts the position of the other round links. Prevent the shift.
- The election board is reporting different results from our app. They said something about data integrity issues in the vote file that may require elimination of certain votes. Can you fix this?
- Candidates page

## Bonus

- Show a progress bar on candidate
- Improve performance of results fetching
- There's an awful lot of literal flexbox code in one-off styled components. Is there a nice way to DRY this up a bit?
- Candidate detail view shows per-round performance?
- TBD

## Discussion questions

- Want to add multiple elections to site. What needs to change?
- 

