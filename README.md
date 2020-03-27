About this project

The goal of this project was to create a Ruby on Rails application using data collected from three different data sources.
This project involved not only connecting to the data sources and display the information, but actually pulling
the data to a local SQL database, storing it in tables and recreating all the relationships in a way that it would be possible
to navigate through the datasets, allow searching, and display visualizations based on this data.


In this project the data sources were:
  - Marvel API (Official Marvel API)
  - SWAPI API (Non-Official Star Wars API)
  - Faker gem (A library for generating fake data, available on GitHub)


A few challenges and implement solutions in this project were:

  - Marvel asks for authentication using an MD5 hash containing the private key, public key, and a timestamp in a way to allow access to their API.
  - Marvel's default limit per call of only 20 results.
  - Recreate the relationship of many-to-many of Characters and Comics
  - Implement Search for Character and Comics
  - Implement pagination
  - Create a responsive layout
  - Allow hierarchically collection navigation between Characters and Comics
  (This means being able to navigate via a link back and forth between the "show" pages of each Character and each Comic)
  - The use of a CSS framework, in this case, Bulma.
