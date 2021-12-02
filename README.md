# 👨‍👩‍👧‍👦 Fam Finder

A fun marketplace app designed in 5 days at Le Wagon. The concept is to provide a platform for people to offer their services as family members (e.g. mother, brother etc.) or partners (e.g. girlfriend, boyfriend) or to find someone offering such services. Based on an Airbnb model, we wanted to develop a system where users could have a single profile that handled both use cases, which we implemented through 'roles'. A user can have many roles, set the price per hour, and see upcoming bookings (as service provider or renter).

![fam-finder-home](https://user-images.githubusercontent.com/32938384/144388104-b5bb4dc0-d81f-4424-90f6-a8767f7f2051.png)
<br>
App home: http://fam-finder.herokuapp.com/
<br>
### Demo account
Use the following login credentials to make your own leagues, teams, players, and stadiums.
<br>
<strong>Please note:</strong> Deleting a league will remove all associated teams and players.
<br>
<br>
Username: test@webdev.com
<br>
Password: 123123

## Development process

### Role: Front End Developer

This was our first full group experience using the git workflow. It was a largely collaborative effort that saw overlapping roles but as front end developer I was responsible for general UI design and guiding the user experience. This included designing the index and show page for roles, as well as user profiles and the implementation of the booking form system on a user's role page.

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
User data was generated based on Le Wagon students but all profile information is purely fictional and for entertainment purposes only.

## Team Members
- [Rhys Malyon](https://www.linkedin.com/in/rhysmalyon/)
- [Cheri Kennedy](https://github.com/akiwidev)
- [Ope Dada](https://github.com/OpeDada)
- [Seira Yun](https://github.com/seira-yun)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
