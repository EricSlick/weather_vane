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

## Research (through Friday) 
**Wed, Nov 9**:
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
installed. Main source, the tutorial at https://www.hotrails.dev/turbo-rails.
   
## Implementation
**Sat, Nov 12**
### Design (15 minutes)

**Home Page**
  * List of Locations
  * CRUD operations

**UI Approximation**
  
    Weather Vane
     
    [         ] New Location
    Location 1 <edit|delete>
    Location 2 <edit|delete>
    Location 3 <edit|delete>

**Show Page**
  * Clicking on a location shows forecast details about that location
    * 7 day forecast
      * each day is listed horizontally next to each other
      * High/Low highlighted for each day
      * bonus 1 show chart of high/lows for the 7 days
      * possible extras
        * show hourly temperatures for each day
        * show weather conditions for the high, low and hourly
          * start with text
          * replace text with images

**UI Approximation**

    Seven Day Forecast for <location>
    
               Day1  | Day2  | Day3 | ...
    Conditions <img>   <img>   <img>
    High       High# | High# | High#| ...
    Low        Low#  | Low#  | Low# | ...
              [bonus 1 chart here showing the high/low for each day] 
    <------- extra 4 hourly temps bonus---------->
    Hour1      Temp# | Temp# | Temp#| ...  
    Hour2      Temp# | Temp# | Temp#| ...  
    Hour3      Temp# | Temp# | Temp#| ...  


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
...
