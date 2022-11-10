# Weather Vane
Weather Vanity
Weathering Heights

A simple app for tracking the weather.


## Developers

* Ruby version
  3.0
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Dev Log
I chose to create a timeline to record my progress throughout this assignment. I'm 
also treating the initial discovery/research/learning as if it was a spike and will do it
on my free time till Friday. I'll build the app formally on the weekend.

## Research
Wed, Nov 9:
Initial App Setup: Using postgres as an older version is already installed.

Weather Data Source: Time boxed 30 minutes.

Since this was something I'd never done, decided to immediately find a source for
weather data. I Looked at a few gems, but the ones seemed old and out of date. There seems
to be a lot of sources for weather data and I didn't research them all, but settled on 
https://www.visualcrossing.com. I know how I want to set up the API interface and
am confident that a different source will be easy to add/replace.
    * simple signup
    * rest api
    * active

Digging into learning more about turbo/stimulus. Nice that rails seems to have it already
installed.


## Assignment/Requirements
Build a small Multi-Location Weather Forecasting Application

Using TDD and Ruby on Rails build a simple application that allows a user to:
* Create multiple locations by (IP Address and/or text address)
* ActiveRecord backed models
* View the 7-day forecast for each location
* highlighting High and Low temps for each day
* Bonus #1: Chart the highs/lows
* Bonus #2: Leveraging Stimulus/Turbo for some of the CRUD interactions
* Bonus #3: deploy the application to a PaaS such as Heroku, Render.com, or Fly

If looking for a tutorial to get you up to speed on the current state of Stimulus/Turbo.
* https://turbo.hotwired.dev/handbook/introduction
* https://www.hotrails.dev/turbo-rails
* https://relishapp.com/rspec/rspec-rails/docs/system-specs/system-spec

**Expectations**
* Complete the application with ~3-5 hours of effort by Monday 11/14
* Share source code through Github with a README that documents how use your program
* Demonstrate ability to use unit and system tests with a strategy for handling data coming from 3rd party APIs
* We typically use RSpec for our tests, system tests in RSpec