# Development Plan
---
## Purpose and Scope
---
#### Purpose
My application will create three different types of lists (Shopping, Bucket or ToDo list) and take user inputs that create items that will be added to one of three types of lists.
It will have a function to sort the lists in alphabetical order, reverse alphabetical order, shorted to longest item length and longest to shortest item length.
It will also have a function that removes an item from the list via searching through the elements.
It will also take the list and export it as a text file, adding "- , - ," for the Shopping list, "1. , 2. " for ToDo list and printing out the Bucket list Hash.

#### Target Audience
I believe the target audience for my list app is anyone that likes to stay organised or for the Bucket list anyone that wants to take control of the things they plan to do with their life.
The target audience could use it to quickly whip up a Shopping list, a ToDo list or a Bucket list.

## List of Features
---
##### Add to List
This function will simply add the item that the user inputs into the terminal to their list.
I use the 'AppText' module to pull the text from 'text.rb' that asks the user what they would like to add to the list.
A variable 'item' that holds the users input and if the user is making a Bucket list it will then ask the user how important the item is to them.
Then the function will proceed to push the item to the list (Array or Hash depending on what type of list).

##### Check List
This is a very simple function that will show the user the list.
The AppText module brings in the text and the function just grabs the list via the 'list_name.list' and does an each operation.
The each operation just puts each item on a new line.

##### Remove from List


##### Sort List


##### Export List


## User Interaction
---
The basic user action will be through the tty-prompt gem as it creates the menus for users to navigate with with the arrows on their keyboard.
The program will ask the user for input when needed throughout the program.

## Control Flow Diagram
---
![workflow](docs/workflow.pdf)