# Initial setup of project:

- `git init`
- `rspec --init`
- `mkdir spec/features`
- `mkdir lib`
- `mkdir views`
- `touch README.md`
- create new repository on GitHub
- `git remote add origin git@github.com:samanthaixer/birthday_challenge.git`
- `git add` and `git commit`
- `git push -u origin master`

### As I went through the test-driving process

- `mkdir public` - for the static files, which are currently not being picked up
- `mkdir spec/unit` - for the unit tests of the BirthdayMessage class

## My overall approach

- I followed TDD for building out my app
  - Because I wrote feature tests for the app, it felt like I had to build quite a bit of code to pass each tests
  - I only wrote unit tests for the Ruby code (`BirthdayMessage` class)
  - I found that because I already knew the brief, I accidentally wrote a feature test for just user story 1 but then built both user stories 1 and 2. I then wrote the feature test for user story 2

## Things I would like to improve

- The obvious one - how it looks! It could look a lot better!
- I would like to account for leap years
- I would like to double check my Ruby class and methods for single responsibility
- I would like to amend the code so that if the person's birthday is tomorrow it gives a different message
- I would like to check for edge cases such as if someone enters an invalid date

## The original brief

Post-Challenge 2: Birthday App

Your challenge is to build a web app that will ask the user for a name and birthday.

When the user submits the form, and depending on the current date, the app will either:

- wish the user happy birthday
- tell them how long they'll have to wait until their next birthday
