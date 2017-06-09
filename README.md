# README

This app is created by hothero (Ronald Hsu). The goal is to make a reddit clone for carousell interview exercise.

Hosting: [http://hothero-reddit.herokuapp.com/](http://hothero-reddit.herokuapp.com/)

There are development environment of this app:

* Ruby 2.4.0
* Rails 5.1.1
* Vuejs 2.3.4

Post attributes: id, title, summary, url, img_url, created_at, vote_count

Basic features:

* Maintain a list of topics and its upvotes/downvotes
* Allow the user to submit topics. For this challenge, a “topic” is simply a string that does not exceed 255 characters.
* Allow the user to upvote or downvote a topic. For this challenge, the user may upvote or downvote the same topic multiple times.
* Always return a list of top 20 topics (sorted by upvotes, descending) on the homepage

**Bonus features**:

* Clear data button: to clear the in-memory store in our server, and you can test other situations.
* Random data button: randomly generate 10 fake posts by [Faker](https://github.com/stympy/faker).
* Search: search posts by keyword you want
* Every action is ajax-based and with two-way data binding, you can directly see the result.