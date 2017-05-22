# MLH Hacking Challenge

## Challenge

- Allow users to sign up and refer other people(via a sign up link assuming referrals based on user, not by hackathon)
- See hackathons and users participating
- See users referred

## Live demo

[Demo](https://arcane-chamber-89304.herokuapp.com/)

User: demo@demo.com

Password: 1234567890

### Live demo referral

Use this [link](https://arcane-chamber-89304.herokuapp.com/users/sign_up?referral_code=G6VXiu22Ji1zIioCHSDxDA) and sign up to see be referred.

### Notes:

- To refer someone, the referee gets a sign up link with referral code
- I didn't allow create/participate in Hackathons, user edit, etc. due to time
- Only wrote one test due to time

## Local instructions

1. Clone repo
2. Run `bundle install`
3. Run `bundle exec rake db:create; bundle exec rake db:migrate; bundle exec rake db:seed`
4. Start server with `rails server`

To test, run `bundle exec rspec`

## Resources

- Devise to get quick user authentication
- Faker for seeding
- Bootstrap for css library
- [Theme](https://startbootstrap.com/template-overviews/clean-blog/) so that page won't be so bare
