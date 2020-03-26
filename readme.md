*** Project Brief ***

Travel Bucket List
Build an app to track someone's travel adventures.

MVP:
The app should allow the user to track countries and cities they want to visit and those they have visited.
The user should be able to create and edit countries
Each country should have one or more cities to visit
The user should be able to create and delete entries for cities
The app should allow the user to mark destinations as visited or still to see
Possible Extensions:
Have separate pages for destinations visited and those still to visit
Add sights to the destination cities
Search for destination by continent, city or country
Any other ideas you might come up with

*** App Use Instructions ***

OVERVIEW
1. The homepage is http://localhost:4567
2. The 'Home' menu returns to the homepage.
3. The 'Countries' menu goes to the countries page, where countries are added, edited and deleted. Countries can be marked as visited.
4. The 'Cities' menu goes to the cities page, where cities are added, edited and deleted. Countries are also assigned to the country and reviews and ratings can be added. Cities can be marked as visited.

COUNTRIES
5. Click the 'Countries' menu to view any countries already entered into the database, split between those visited and those still to visit. Click any country to edit its details and to view any of its cities entered into the database. The cities can be clicked to view and edit their details.
6. Click 'Add a new country' to enter the details of a new country, including:
  a. Country Name
  b. Country Visited - Yes/Not Yet
7. Click the Delete "Country" button to remove the country and all its cities. There is a delete confirm message to avoid accidental deletions.

CITIES
8. Click the 'Cities' menu to view any cities already entered into the database, split between those visited and those still to visit. Click any city to edit its details.
9. The cities page shows the review and rating for the city and which country the city is in.
10. Click 'Add a new city' to enter the details of a new city, including:
  a. City Name
  b. City's Country - select from dropdown
  c. City Visited - Yes/Not Yet
  d. City Review
  e. City Rating - out of 10
11. Click the Delete "City" button to remove the city. There is a delete confirm message to avoid accidental deletions.

*** Technologies Used ***

1. psql -d travelbucket -f db/travelbucket.sql
2. psql -d travelbucket
3. ruby seeds.rb
4. ruby app.rb
