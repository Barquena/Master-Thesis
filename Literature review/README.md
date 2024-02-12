# Documentation

## Background
The following set of sub-routines was made to do a backward citation search for a scoping review about cardiorespiratory measurements at exercise in patients with a systemic right ventricle.
The literature review was first done in the *Covidence* web application [https://app.covidence.org/]. A total of 25 536 articles were screened. A total of 24 536 articles were considered irrelevant. A total of 526 were excluded after the articles were read. A total of 252 articles were included. From those 252 articles, the bibliography was extracted with the help of *chatGPT* [https://chat.openai.com] to keep only the titles of the cited articles and was logged in an Excel document. After string formatting each title, a backward citation search was conducted to see if any relevant articles were missed during the literature review.

## Color code
🟪

🟨

🟩

🟥

![pink](https://github.com/Barquena/Master-Thesis/assets/90822097/d4a9d2be-9a87-4ee1-8da7-e1679b4acafe)





## Excel document layout

## Example

Here is a example of how the sub-routines *findIrrelevant()* , *findIncluded()*, *findDoubles()* and *resetYGP()* would look like in a excel file.

*findIrrelevant()*  -> Goes through a list of **24 536 articles** names to see if they match the current one he is looking at in a given cell;

*findIncluded()*    -> Verifies if the current cell contains the words Congenital/congenital/Systemic right ventricle/systemic right ventricle;

*findDoubles()*     -> Will go through all current articles that were not excluded, and see if they repeat them self. If yes, it will keep the first one and mark it as a duplicate;

*resetYGP()*        -> Reset the interior color of the cells to *xlNone*. Only keep articles that were already identified as duplicates from the irrelevant, excluded, and included lists. Only if needed.

https://github.com/Barquena/Master-Thesis/assets/90822097/ee3022ec-dc01-4cce-9e18-8e473033199c

## String Formating
### removeFirst1()
> Remove the first character from a string.
### removeFirst3()
> Remove the first 3 characters from a string.
### removeFirst4()
> Remove the first 4 characters from a string.
### mettreEnMinuscule()
> Put all characters in lower-case in a string.
### enleverDernierCaractere()
> Remove the last character of a string.
### subTrim()
> Remove all white spaces in a string - call excel function *=trim()*.

## Search algorithms
### findIrrelavant()
> Goes through a list of the irrelevant list of articles to see if they match the current ones in the bibliographies of the included articles.
### findExcluded()
> Goes through a list of the excluded list of articles to see if they matches the current ones in the bibliographies of the included articles.
### findIncluded()
> Goes through a list of the included list of articles to see if it matches the current ones in the bibliographies of the included articles.
### findRelevant()
> Goes through the bibliographies of the included articles to see if they contain the words Congenital/congenital / Systemic right ventricle / systemic right ventricle..
### findDoubles()
> Goes through the bibliographies of the included articles to see if Relevant articles repeat themselves.

## Page reset
### resetYGP()
> This sub-routine reset the interior color of the cell to *xlNone*. Only keep articles that were already identified as duplicates from the irrelevant, excluded, and included lists.

