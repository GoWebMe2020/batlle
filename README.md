# Project Title
## Battle

# User Stories

As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 500

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 500

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first

### And some Advanced 'extension' User Stories:

As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface

## Motivation

Build a simple game that allows either 2 players or a single player, to battle out using attack or heal buttons.

## Build status
* All rspec tests passed
* Live tests passed
* Complete

## Code style
* Test-driven development
* Pair programming (Navigator/Driver)

## Tech/framework used
* VS Code (Live Share)
* GitHub
* Bundler
* Zoom

## Built with
* Ruby
* Embedded Ruby
* Rspec
* Sinatra
* Capybara

## Screenshots

![alt text](images/monster.jpg | width=200)

## Installation
* Clone the repo
* Run bundle

## Tests
* Feature tests using Capybara
* Rspec tests on all the necessary methods
* Web browser tests

## How to use?
* Run rackup in the terminal
* Open the brower and enter localhost:9292
* Enter 2 names for 2 player mode or enter 1 name to battle the machine
* Use the attack or heal buttons and confirm your choice by clicking okay
* The battle is over once 1 player has no health left.

## Credits
* JP Ferreira
* Sturat McArdle
* Felix Piercy
* Charlie Casserly