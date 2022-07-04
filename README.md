# EL README DE FIESTA ENCONTRANDO

Este es un aplicación web de Ruby on Rails que usa Tailwind CSS, Devise Authentication, y Postgres Database. Los usuarios pueden crear fiestas y ir a fiestas.

## LAS NOTAS ##

La fetcha de creacion del proyecto:  2 de julio, 2022

July 3 - Scrapping project.  Database and forms are not working for some reason.  Whenever a user is registered, their username is not getting saved.  In addition, not sure if this is related.  But when trying to make a new post, it errors saying 

NoMethodError in FiestaController#new
undefined method `fiestum' for #<User id: XX, email: "XXXXX@gmail.com", created_at: "2022-07-04 03:01:35.723910000 +0000", updated_at: "2022-07-04 03:01:35.723910000 +0000", username: nil>

ugh.. Also, rails though Fiesta is plural when it's not and then singular-ized the word to fiestum which is pretty confusing.  Also, this is in Spanish.. I think the code should remain English and then just change the text on the view to Spanish to make it simpler.