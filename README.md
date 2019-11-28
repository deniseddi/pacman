# Project Name

**Pacman code challenge**

![Image](https://i.imgur.com/zv0pDgH.png?1)

## Table of Contents

- Introduction
- Description
- Problems to solve
- Challenges

## Introduction

Pacman is a variation of the popular Toy robot code challenge. What follows bellow are partly the instructions of the game combined with my thinking notes to build it.

## Description

**Setting the game**

• Grid: 5x5 units board  
• Pacman: only one

• There are no obstructions to the grid.

• Pacman should not be allowed to move outside the grid. A given command that attempt moving pacman off the grid should be ignored/ blocked. Within that same move (or user turn), if another command allows pacman to perform an action within the board, that command should proceed.

**Commands**

- PLACE: initial position of Pacman on the grid (X, Y, F) chosen by the user as an input. Must be a valid position
- X: horizontal orientation on board
- Y: vertical orientation on the board
- F: Pacman is ‘Facing’ NORTH, SOUTH, EAST or WEST
- 0,0 (X, Y): can be considered the most south west position on the grid

PLACE has to be first valid command to be used, only after that, these commands can be followed, in no particular order:

- MOVE: Pacman advance 1 unit in the direction it is facing (dictated by F)
- LEFT: Pacman do not advance but instead it rotates 90 degrees to the specified direction
- RIGHT: as above
- PLACE: another Place command can be used after initial one is typed.
- REPORT: outputs the X, Y and F of Pacman

**If any one of these commands is written before PLACE, it should be ignored.**

## Problems to solve

- Choose a programming language to build the game
- How to build the grid
- Establish grid’s limits/edges
- How to define a position and place Pacman on the grid through code
- Prompt the user. Loop(?) to continue asking for input.
- How to get the input from the user
- How to perform a basic move from one position to the next (Move)
- How to face Pacman (F)
- How to rotate (Left, Right)
- How to prevent Pacman from falling off the grid
- How to ignore commands that would make Pacman fall off the grid
- How to output the REPORT
- When does it end?

## Challenges

**Some of the challenges still needed to be solved**:

- Program is not blocking random commands.
- More unit tests need to be written.
