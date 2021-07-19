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

## Prompt TODO:

- Basic UI + Layout
- Round result UI
- README Instructions
- Ruby API for results

## Existing issues

- Election board is reporting different results from our app. They said something about data integrity issues in the vote file that may require elimination of certain votes. Can you fix this? (Backend API)
- A lot of warnings on the page. Can you fix them?
- Navigation through rounds doesn't work, just shows the same round

## Feature Requests

- Progress bar on candidate
- Use data from API instead of mock data
- Improve performance of results fetching
- Candidate detail view shows per-round performance?
- TBD

## Extensions/Discussion questions

- Want to add multiple elections to site. What needs to change?
- 

