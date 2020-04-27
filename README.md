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
The remove list function will show the user what they currently have in their list and let them input something they would like to remove.
The users input will be checked against the list (array or hash) and if it is in the list it will be removed and the list will be shown again.
If it isn't in the users list the program will return an error and retry the question.

##### Sort List
The sort list function will ask the user how they would like to sort their list and give them 4 options.
Alphabetical order, reverse alphabetical order, shortest to longest item length and longest to shortest item length.
Then depending on which option they choose the list will then be sorted and the user will be shown the list at the end.

##### Export List
The export function takes the list that the user has created and prints every line to a new line of a text file.
The user then can send it to someone, keep it for later or print it to paper to keep as a physical copy.

## User Interaction
---
The basic user action will be through the tty-prompt gem as it creates the menus for users to navigate with with the arrows on their keyboard.
The program will ask the user for input when needed throughout the program.

## Control Flow Diagram
---
![workflow](docs/workflow.pdf)

## Screenshots
---
Some samples of code.
![Code-1](docs/Code_1.png)
![Code-2](docs/Code_2.png)

## Design and Planning
---
### Project Plan
---
Before creating this app I had a few ideas, one of them being a Survival Horror Text Adventure.
I soon realised that the scope of that idea was way too large for the amount of time that I had, I also thought that creating something with more use instead of a game would be good for my portfolio.

Once I settled on the app I created a workflow/user diagram.

![workflow](docs/workflow.pdf)

I had also started planning out functions, what I had to do and what else I want to add if I had time on my Trello board

![trello](docs/trello.png)

### Pain Points
---
I realised early on it would be better doing something I could plan, test, code and polish than something with a large scope that would waste time and hinder my score.

I struggled to do planning and tests for some things as I was using a lot of class accessors for the list but managed to test what I could test.

### Improvements
---
1. I decided to put all the text into a seperate file so I can call it when I need it, making the code much easier to sort through.

2. Testing even the simple code was a good idea as it really sped things up

### Further Development
---
Given more time I would have liked to added:

1. More list types

2. More sorting options

3. Having multiple lists active at one time

4. Merging and loading previous lists
---
[You can find the source code here!](https:/github.com/brandonrobertson23/sort_app)

###### A Terminal App by Brandon