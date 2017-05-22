User.create!(name: "Demo", email: "demo@demo.com", password: "1234567890", password_confirmation: "1234567890")

20.times do
  name = Faker::Overwatch.hero

  User.create!(name: name, email: Faker::Internet.email(name), password: "1234567890", password_confirmation: "1234567890")
end

25.times do
  Hackathon.create!(name: Faker::LeagueOfLegends.champion, location: Faker::LeagueOfLegends.location, date: rand(80).day.from_now)
end

20.times do
  HackathonUser.create!(user: User.order("RANDOM()").first, hackathon: Hackathon.order("RANDOM()").first)
end

User.all.each do |user|
  user.update!(referrer_id: User.order("RANDOM()").first.id)
end
