# README

February 26, 2016

I. Description:

G-free! is an application that allows users to find allergen friendly restaurants their current location. Users set up their allergy profile when they first singup and a location map automatically loads on the results page. Users can also see the top rated restaurants in the area and if any of their friends are near or at their favorites restaurants.

Link to site:
[Gfree](http://stormy-peak-29649.herokuapp.com/)

Link to ERD and Wireframes--> [On Github](https://github.com/Beta-23/Web_App_Project/tree/master/ERD%20and%20Wireframes)

Link to User Stories-->

As a G-Free Consumer; I need: an instant view of all G-Free restaurants in my current location; So I can: have a worry free dinning experience.


Prokect Management tool-->[Asana](https://asana.com/)

II. How Was This Project Built:

G-free! was built using the Yelp API, Ruby on Rails, Bootstrap, CSS and PostgreSQL.

III.How to Contribute:

There are many areas for improvement, including:

*adding Geolocations so that users can use their own location to search for nearby restaurants.


IV. Credits & Sources:

Thank my my classmates (especially Franchini, Christina, Brian, Vien, Dereck, Monq, Annabelle) for keeping me in check, spotting my silly mistakes and support  I would also like to thank Ilias Tsangaris, Daniel Gih and the TA team for their amazing training support.

V. System dependencies:

Ruby on Rails, HTML, CSS

Some references and sources I used:

*Google Fonts API

*Yelp API

Deployment instructions and gem's need it to run program:

source 'https://rubygems.org'

gem 'yelp', require: 'yelp'
gem "figaro"
gem 'httparty'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'
gem 'capistrano-rails', group: :development

group :development, :test do
gem 'pry-rails'

group :development do
gem 'web-console', '~> 2.0'
gem 'spring'
