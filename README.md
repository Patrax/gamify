Add Admin Functionality:
- 

Authentication updates:
- Show game page -> Ability to edit/update only own game
- Navigation partial -> Toggle Menu, restrict new
- Restrict thumbs up and thumbs down action to logged_in users only
- Game - Update to current_user
- Like - update to current_user
- Before_action :require_user, except: [:show, :index]
- Before_action :require_same_user for users, only:[:edit, :update]

Users TODO:
- Add passwords to the users table so users can be authenticated and logged initialization
- Use email as log in credentials, since email is unique
- Ability to register new users to use the app
- Ability to display users profile
- Ability to list users using the app
- Ability for users to log in and log out of the app
- Restrict actions like create game, edit game and like feature to logged in users only
- Restricting edit of games by users who created the game

testing specs for games:
name: string
summary: text
description: text

- name must be present
- name must be between 5 and 100 characters
- summary must be present
- summary must be between 10 and 150 characters
- description must be present
- description must be between 20 and 500 characters

testing specs for users:
name: string
email: string

- name must be present
- name must be between 3 and 40 characters
- email must be present
- email must be unique (since we'll use it for logins)
- email must be valid




== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
