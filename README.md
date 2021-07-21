# Ranked Choice Visualizer App

You now find yourself as the sole maintainer of the "Vote Viewer" ranked-choice
election visualization app. The last developer built much of it, but there are a
few more things to take care of before we're ready to consider go-live. There
are some minor UI/UX issues and the data is still mocked. Can you help us get it
over the finish line?

## Instructions

Please attempt to fix/implement the following, in order. If you get stuck on
one, feel free to skip it and move to the next.

1. Clean up the browser console warnings
2. The "Voting results" and "Candidates" links in the top-nav should change
   color depending on whether you are currently on that page
3. The "VOTE PERCENTAGE" column should show the % of votes that candidate
   received in the round (it currently displays the total votes for that
   candidate in the round)
4. Candidates should be ordered by the number of votes received in the round
5. Round data should come from the API instead of the mock JSON
6. Navigating between rounds should leverage browser navigation (current round
   persists in URL, round clicks persist in native browser history navigation)
7. Prevent the subtle shift in "Round X" text placement when clicking through
   the different rounds
8. The election board is reporting different results than our API. They said
   something about data integrity issues in the vote file that require the
   elimination of certain ballots when tallying. Can you find the cause and fix
   this?

Please try not to spend more than 2-3 hours in total on this assignment. You are
not expected to complete all of the above steps but you should try to complete
as many as you are comfortable getting to. If you have partial solutions, feel
free to leverage the features of git and github to better isolate these for
review.

You are expected to solve the prompt on your own. You are of course welcome to
look up documentation, stack overflow posts, or any other standard development
resources while completing this assignment.

## Submission

Please submit your response as a PRIVATE github repo.

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


TODO: REMOVE THESE FROM PROMPT REPO
## Extensions

- Show a progress bar on candidate
- Improve performance of results fetching
- There's an awful lot of literal flexbox code in one-off styled components. Is there a nice way to DRY this up a bit?
- Candidates page looks pretty messy. 
  - Card grid could be prettied up.
  - Candidate cards could show which round they made it to
- TBD

## Discussion questions

- Want to add multiple elections to site. What needs to change?
- What would we need to "productionize" this application?
