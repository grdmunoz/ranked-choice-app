# Variant C Instructions

Located within [/api](/api) is a simple Ruby on Rails API application that
provides a rudimentary API for exploring the results of a single ranked-choice
election (see [the README](/README.md) for more on ranked-choice elections).

Now we want to expand the API's capabilities so that it can expose the results
of more than one election. Your task is to extend the data model and API so that
a client of the API could:

- find all elections
- find out the candidates involved in an election
- find out the rounds involved in an election
- find out the winner of an election

The design of both the API and the data layer is up to you.

## Expectations

- Please do not spend more than 2-3 hours in total on this assignment. 
- If you are not comfortable with Ruby/Ruby on Rails, you are more than welcome
  to use a different language of your choice. Should you decide to do this,
  please continue to use a SQL database and provide instructions for running
  your solution.
- Please document some way to check your work against the requirements. This can
  be in the form of a list of endpoints with seeded data, automated tests, or
  some other proof. 
- Please leverage some form of documentation (e.g., a README, inline comments) to note any compromises you have
  made in the course of developing your solution. (Ideal implementations are not
  expected from timeboxed prompts like this)
- If you have partial work you'd like to include, feel free to leverage the
  features of git and GitHub to better isolate them for review.

You are encouraged to look up documentation, StackOverflow posts, or any other
standard development resources while completing this assignment.

## Submission

Please submit your response as a **PRIVATE** GitHub repo.

## Finishing early

If you manage to finish in less than 2-3 hours and wish to add more to your
project before submitting, you can feel free to embellish the project in any way
you see fit! Some possible additions include:

- Extending the API to support:
  - sorting of data
  - filtering of data
  - vote collection
- Making it possible to run the rails app locally with docker-compose
