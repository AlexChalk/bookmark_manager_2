# Bookmark Manager

A very simple implementation of a bookmark manager. You can create/save links, and filter links by their tags. You can also sign up at `/signup`, but signing up is the only user functionality that exists, and your password will not be encrypted (so please don't use a proper password).

## Installation

1. Clone the repository: `git clone git@github.com:adc17/bookmark_manager_2.git`

2. Install gems: `cd path/to/dir` then `bundle install`. If `bundler` isn't installed, first run `gem install bundler`.

## Usage

### Option 1: Use the app on Heroku
Just visit the app [here](https://obscure-lowlands-85366.herokuapp.com/links).

* View links: `/links`.
* Create new links: `/links/new`. Multiple tags should be comma-separated, 'just, like, this'.
* Filter links by their tagsL `/tags/:name-of-tag`.
* Sign up at `/signup` (again, there is no reason to do this and your password will not be encrypted).

### Option 2: Deploy locally
Ruby Code:
1. `git clone git@github.com:adc17/chitter-challenge.git`.
2. `cd path/to/dir` then `bundle install`.

PostgreSQL:
1. Install PostgreSQL (instructions [here](https://www.postgresql.org/download/)).
2. Initialize database: `cd path/to/dir` then `rake db:data_mapper_auto_migrate`.

Run on a local server:
1. `cd path/to/dir` then `rackup -p 4567`.
2. Visit `localhost:4567` in your browser.

## Tests

To test, navigate to the project root and run `rspec`.

## Other Implementaions

At Makers Academy, we switch pair partners each day and work on whoever's version of the project is least advanced. I worked on two other versions of this week's project:

1. [Tuesday/Wednesday](https://github.com/adc17/bookmark_manager/): An early iteration—links can be created with just a single tag.
2. [Thursday](https://github.com/axcochrane/bookmark_manager2): Links can be created with one or more tags.

## Other Notes

Completed during week four of the [Makers Academy](http://www.makersacademy.com) Bootcamp.