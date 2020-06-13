# 🦦 SurgiWiki v0.0

# This is a Flatiron School Project on Ruby-on-Rails Framework

# Installation
After checking out the repo, run `bundle install` to install dependencies.

To view app on your local host

run `rails db:migrate`

next `rails db:seed`

then `rails s` and head to the specified port.

## Specs: 

- [x]  Using Ruby on Rails for the project
- [x]  Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x]  Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x]  Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x]  Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x]  The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x]  Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x]  Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x]  Include signup
- [x]  Include login
- [x]  Include logout
- [x]  Include third party signup/login (how e.g. Devise/OmniAuth)
- [x]  Include nested resource show or index (URL e.g. users/2/recipes)
- [x]  Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x]  Include form display of validation errors (form URL e.g. /recipes/new)
    - [https://guides.rubyonrails.org/active_record_validations.html](https://guides.rubyonrails.org/active_record_validations.html)

Confirm:

- [x]  The application is pretty DRY
- [x]  Limited logic in controllers
- [x]  Views use helper methods if appropriate
- [x]  Views use partials if appropriate

# What is it?
SurgiWiki is an open-content collaborative database. A simple content management system (CMS). This Minimum Viable Product is designed for nurses and surgical techs as an easy way to answer their frequently asked questions. 

# Purpose

## Problem Overview
Put yourself in the shoes of a newly hired surgical tech or intra-op registered nurse. You have no idea where things are located. You have so many questions about a specific surgical procedure in your mind. Rather than focusing on patient care or other medical related tasks, you continually lose time trying to find simple items. There are no electronic documentations for supplies and frequently asked questions.

This app is built for you. SurgiWiki solves a recurring problem with a ruthlessly minimalistic CMS. Our department will always have new hires that can benefit from a search engine and database to effectively answer thier questions.

## Goal
The goal is to help nurses and surgical techs grow, regardless of experience level. The more we contribute and organize our information, the better off we'll be. More data is not always better, what we are really looking for is forward-motion.

> “Train people well enough so they can leave, treat them well enough, so they don't want to”. — Richard Branson

> “We don't rise to the level of our expectations, we fall to the level of our training.” ― Archilochus

## Design overview
SurgiApp is deliberately designed so that collaboration is key to its usefulness. Anyone can edit any entries. Without other peoples' contributions, this app leads nowhere, and information will remain outdated.

## Contributing
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## MIT License
The code is available as open source under the terms of the MIT License.
