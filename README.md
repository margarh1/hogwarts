#OH NO

Hogwarts has lost all its magic and now NOTHING WORKS!

## To Do:
You are part of Dumbledore's army. Correct all the errors so that this app runs properly.

## Bonus
Add functionality so students can enroll at Hogwarts (Creating a new student). You should implement a sorting hat method to randomly assign new students to one of Hogwarts' four houses. (Where do you think this logic should go?)


# Documenting Progress
1. Updated json gem to fix incompatability issue with Rails 5 (Dec 15)
2. Tried various myriad way to try to solve the "PG::Connection Bad, Fatal: role 'GA' does not exist" error, including 'gem install pg -- --with-pg-config=/usr/local/bin/pg_config'
3. Finally figured out how to solve the "PG::Connection Bad Fatal: role 'GA' does not exist" by creating a user called GA in psql (Dec 19)
  * Created a hogwarts_development database through psql
  *  Re-aligned the rails environment to match development, using 'rake db:migrate RAILS_ENV=development', as suggested by the error page
4. Changed routes from 'house' to 'houses' to match controller name
  * Changed 'House' to 'Houses' in model
  * Added '@' to houses in houses/index.html.erb
5. Managed to get the main page to render
  * Involved reworking the seeds.rb to ensure it matches the schema
  * Changing 'def' to 'class' in the Students model
  * Altering the erb tags in the houses/index.html.erb to create links and images
6. Got the students page to render
  * Involved renaming 'StudentController' to 'students_controller'
  * Reworked the erb to render the names, links, and house names properly
7. Got individual student pages to render
  * Changed closing tag of image tag to proper erb format
  * Created an @house object to find the simply the code for finding the house name
8. Got individual house pages to render
  * Used the @house instance to find the student objects with the matching house id
  * Stored the resulting students in their own array for webpage iteration
9. Got the enrollment page to render and work
  * Allowed the resources for students to access the new and create paths
  * Created a form for a new student
  * Randomized House assignment
  * Redirect a successfully sorted student to their own page
  * Created a flash message to declare the successful sorting
  * Created a flash message, in case of errors
  * Created a redirect, in case of errors
