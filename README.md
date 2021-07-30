# JPACRUDProject

## ---Overview---
A basic app allowing the user to perform CRUD operations via web interface. The theme is inspired by the Fallout video game series and is adapted from the original [codepen](https://codepen.io/mackorichardson/pen/vNMRpK) by Mack Richardson. The user is offered the titular four choices on the landing page. Selecting the first will immediately allow them to add a user to the database using a form to fill in most fields. Behind the scenes the date and time or creation are also submitted and added to the character record. The user will be notified via the next page whether the addition was successful or not. All other choices lead to an intermediate search page which offers a choice to search by character serial# (the index of each row in the table) or by keyword (essentially a substring search of the name column). Results are displayed singly for the index or in a list form for the keyword. On the results page all fields are editable and where restricted input is required (the skill and alive traits) dropdown and radio button selectors are implemented. The user is able to update the current values and commit them to the database or delete the entry altogether. Either choice will send the user to a notification page if the operation is successful or an error page if not. Stop by and [add your favorite character](http://18.189.91.96:8080/FalloutApp/)!

### Technology used:
* JPA
* Persistence
* Hibernate
* MySQL & MySQL workbench
* Spring Boot
* HTML 5 & CSS 3

### Topics covered:
* Full-stack application development
  * Back end database
  * Front end web interface
  * MVC
* CRUD
* Configuration

### Lessons learned:
This was a continuation and refinement of the film CRUD but was much easier due to the experience with that project and especially the much easier to implement DAO using JPQL. Overall a fun experience and I look forward to doing more!


### To Do
1) Make the front end look a bit more organized
2) Add the ability for a user to add their own photo URL
3) More theming
