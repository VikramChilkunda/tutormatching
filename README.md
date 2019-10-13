# README
Project owners:

-Resetting the heroku database takes a little work, because schema.rb in the Github code has table columns from a deleted migration which Heroku never received. In your editor (AWS Cloud 9 or whatever you choose to use), add the columns Heroku says are missing, push to Heroku and run heroku run rails db:migrate. After the heroku database is reset delete whatever columns you added in your editor before you next run rails db:migrate to prevent duplicity (because your code already had the table columns heroku was missing).

Admins:

-On your profile page are the following buttons:

  -Admin Actions: Lets you see and delete users
  
  -Download user list: download an excel file of all current tutors
  
  -Import CV Student List: This button takes you to a page with options to choose file, import, and clear the cv student list. *Before        each school year and before adding an updated list, do the following:*
  
      -Click "Clear CV Student List"
      
      -Click choose file and select your excel sheet with the most up-to-date list of CV students. This is the list the website runs all tutors against to ensure that they are CV students
      
      -Click Import
      
-If a new student reaches out to you because they are unable to signup as a tutor, it's probably because their ID number is not in our databse. Have them give you their name, email, id number, grade, and password and sign them up on the website with your admin key(which you can set by going to your profile -> edit profile -> admin key).

If you have questions about this README, contact Adarsh Chilkunda at adroyalz@gmail.com
# google.com
