# Sam's birthday app

## About this project

This project creates a simple webpage that accepts a name and birthday. Depending on the current date, the webpage will either wish the person happy birthday or tell them how long it is (in days) until their birthday.

## User stories

I have extracted the following user stories:

```
As a User
So that I can receive a personalised message about my birthday
I want to be able to see my name after clicking the go button
```

```
As a User
So that I can receive a message specific to my birthday_challenge
I want to be able to enter my birthday into the webpage
```

```
As a User
So that I can feel good on my birthday
I want to see a message saying happy birthday when it is my birthday
```

```
As a User
So that I can make plans
I want to see a message telling me how many days it is until my birthday when it is not currently my birthday
```

```
As a User
So that I can enjoy using the webpage
I want the webpage to be pleasing to the eye
```

## Technologies used

- RSpec and Capybara for unit and feature testing
- Sinatra for building the webapp
- HTML and CSS (not currently working) for building the return messages

## Installing the project

- `git clone git@github.com:samanthaixer/birthday_challenge.git`
- `bundle install`

## Testing the project

- From the root directory, run `rspec`

## Running the app

- `rackup -p 4567` will run the app on port 4567
- Go to `http://localhost:4567` to start using the app
- **beware** the currently hideous styling - I am still trying to work out how to use CSS

## How I approached the project

- Checkout the `notes.md` file to find out more about my approach
