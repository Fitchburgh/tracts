# Tracts

## This program allows managers to view all pertinent information on their properties and units as well as view tenant and owner information.

PGSQL is the database of choice, as the program is reliant on managers submitting information, a seed file is provided in order to generate some data. To initialize:

- Install and have running postgresql

- $ rake db:migrate

- $ rake db:seed

Navigate to the home page, which will redirect you to the managers sign_in page.  Please click the sign up link to create your manager.  

Future updates will include removal of properties, adding of tenants and owners, as well as a maintenance portal which will provide users with a further look into their properties, and more to come.  

Please direct any questions to @b_fitchburgh on twitter or directly to me on this repo.
