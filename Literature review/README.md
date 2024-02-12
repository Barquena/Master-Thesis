# Documentation

## Background

## String Forating
### removeFirst1()
>Remove the first character from a string 
### removeFirst3()
> Remove the 3 first characters from a string
> #removeFirst4()
>Remove the 3 first characters from a string
### mettreEnMinuscule()
>Put all characters in lower-case in a string
### enleverDernierCaractere()
>Remove the last character of a string
### subTrim()
>Remove all white space in a string - call excel function *=trim()*

## Search algorithm

## Page reset
### resetYGP()
> This sub-routine reset the interior color of the cell to *xlNone*. Only keep articles that were alreacy identidied previously as duplicate from a list of alreacy indetendy irrelevant articles.
## Example
Here is a example of how the sub-routines *findIrrelevant()* , *findIncluded()*, *findDoubles()* and *resetYGP()* would look like in a excel file.

*findIrrelevant()*  -> Goes through a list of 24 536 articles names to see if it match the current one he is looking in a given cell;

*findIncluded()*    -> Verifies if the current cell containt the words Congenital/congenital/Systemic right ventricle/sytemic right ventricle;

*findDoubles()*     -> Will go through all current articles that were not excluded, and see if they repeat them self. If yes, it will keep the firt one and mark as a duplicate;

*resetYGP()*        -> Reset the interior color of the cell to *xlNone*. Only keep articles that were alreacy identidied previously as duplicate from a list of alreacy indetendy irrelevant articles.

https://github.com/Barquena/Master-Thesis/assets/90822097/ee3022ec-dc01-4cce-9e18-8e473033199c

