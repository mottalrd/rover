# Rover

## Language

Initially, I was given permission to attempt this challenge in Javascript as it is the language I have been using most recently and am most confident using. However, after some consideration, I have decided to complete the challenge in Ruby instead as I believe it is more suited to the object-oriented aspect of this task.

In keeping with OO principles, I have created various classes and modules with a single responsibility.

* Cli: a module to take care of the command line interface.
* Commands: a module containing two types of navigation methods.
* MissionControl: a class to trigger mission events.
* Plateau: a class that can create and display itself in a grid format.
* Rover: a class that keeps track of all rovers and their behaviour.
* Styling: a module containing styling methods.

## Design

As there was no mention of creating specific UI for the web or elsewhere, I have decided to keep it simple and create a command line application.

In order to make it more engaging, I have brought an interactive element to the application by:

  1. Creating basic dialogue between NASA and the user.
  2. Prompting the user for their input to customise the size of the plateau, the position of the rovers, etc..
  3. Adding simple diagrams to help user visualise the context of the game.
    * Diagram of the plateau divided up into a grid.
    * Diagram of the initial position of the rover(s).
    * Diagram of the eventual position of the rover(s) after they complete the supplied instructions.

## User Journey

A brief summary of the game as whole:

1. Welcome to Nasa!
2. Begin mission?
  * If yes, continue program.
  * If no, end program.
3. Create plateau based on user's input.
4. View plateau as grid.
5. Deploy rover based on user's input.
  * Input includes: x coordinate, y coordinate, direction, and commands.
6. User given option of deploying another rover.
  * If yes, user taken back to step 5.
  * If no, user can proceed to step 7.
7. Display the initial position(s) of rover(s) on screen.
  * Consolidate input.
8. Display the eventual position(s) of rover(s) on screen.
  * Consolidate output.
9. End of program.

## Assumptions

* The user will not drive the landed rover(s) out of the plateau (off the grid) as they created the plateau so should be aware of the its size.

* Multiple rovers can occupy the same cell.

## Testing

This challenge has been the first time I have been faced with the task of writing tests for my code! Knowing where to begin has, perhaps, been the biggest challenge. However, it has given me a flavour of TDD and highlighted how important it is that I prioritise learning the skill of writing high-quality tests!

I have decided to use RSpec as my chosen testing tool. The specs can be run by typing ```rspec``` into the command line in the ```rover``` folder.

## Instructions

To run the program you can either unzip the provided file or clone this repo to your local machine.

Navigate to the root folder 'rover'.

In the command line, run ```bundle install``` to install ruby gems.

Next, run ```ruby bin/run.rb``` to begin the program.

You will then begin your NASA space journey!
