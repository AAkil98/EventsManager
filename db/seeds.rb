# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#admin
User.create!(
  email: 'admin@example.com',
  password: 'password',
  full_name: 'Admin User',
  admin: true,
  status: nil
)

# Owner
User.create!(
  email: 'owner@example.com',
  password: 'password',
  full_name: 'Owner User',
  admin: false,
  status: 'owner'
)

User.create!(
  email: 'owner2@example.com',
  password: 'password',
  full_name: 'Owner User',
  admin: false,
  status: 'owner'
)

# Clients
User.create!(
    email: "client@example.com",
    password: 'password',
    full_name: "Client User",
    admin: false,
    status: 'client'
)

Event.create!(
  title: "Music Concert",
  category: "Concert",
  description: "Get ready for an evening of electrifying performances and pure musical magic! We're thrilled to invite you to our spectacular music concert, featuring an incredible lineup of talented artists who are set to deliver a night you won’t soon forget.",
  starting_day: Date.today + 5.days,
  ending_day: Date.today + 6.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/entertainment-event-managment.jpg'))
)

Event.create!(
  title: "AI Conference",
  category: "Conference",
  description: "Join us for an insightful AI Conference where the future of technology unfolds! This conference gathers leading experts, innovators, and enthusiasts to explore the latest advancements in artificial intelligence. Attendees will dive deep into transformative AI technologies, discover cutting-edge research, and engage in dynamic discussions on AI's impact across various industries. With keynote speeches, panel discussions, and hands-on workshops, this event promises to inspire, educate, and connect like-minded professionals. Don’t miss this opportunity to be at the forefront of AI innovation and drive the conversation forward.",
  starting_day: Date.today + 2.days,
  ending_day: Date.today + 7.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/Albarsha.webp'))
)

Event.create!(
  title: "My Wedding",
  category: "Party",
  description: "Our ceremony will be filled with heartfelt vows, joyful tears, and beautiful memories. Following the ceremony, we’ll enjoy a reception with delicious food, dancing, and lots of laughter. Your presence will make this day even more meaningful and unforgettable for us. We can’t wait to celebrate with you and create lasting memories on this extraordinary day!",
  starting_day: Date.today + 30.days,
  ending_day: Date.today + 37.days,
  mode: "Private",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/wedding.png'))
)

Event.create!(
  title: "Birthday Party",
  category: "Party",
  description: "We have an exciting lineup of activities, delicious food, and plenty of laughter in store. Come ready to celebrate with great music, delightful treats, and wonderful company. Let’s make this birthday one to remember! Your presence will add to the joy and make the day even more special.",
  starting_day: Date.today + 6.days,
  ending_day: Date.today + 6.days,
  mode: "Private",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/decorrentals .jpg'))
)

Event.create!(
  title: "Ballet Competetion",
  category: "Entertainment",
  description: "Experience the grace and elegance of ballet at our upcoming performance! Join us for an enchanting evening where the art of dance takes center stage. Watch as talented dancers bring classic and contemporary choreography to life, captivating you with their artistry and passion. The event promises a night of stunning performances, exquisite costumes, and a spellbinding atmosphere. Don’t miss this opportunity to witness the beauty and artistry of ballet in a truly unforgettable setting.",
  starting_day: Date.today + 6.days,
  ending_day: Date.today + 6.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/ballet.jpeg'))
)

Event.create!(
  title: "Ballet Competetion",
  category: "Entertainment",
  description: "Experience the grace and elegance of ballet at our upcoming performance! Join us for an enchanting evening where the art of dance takes center stage. Watch as talented dancers bring classic and contemporary choreography to life, captivating you with their artistry and passion. The event promises a night of stunning performances, exquisite costumes, and a spellbinding atmosphere. Don’t miss this opportunity to witness the beauty and artistry of ballet in a truly unforgettable setting.",
  starting_day: Date.today + 6.days,
  ending_day: Date.today + 6.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/ballet.jpeg'))
)

Event.create!(
  title: "Beach Party",
  category: "Party",
  description: "Dive into summer fun at our vibrant beach party! Join us for a day of sun, sand, and surf as we celebrate with a lively mix of music, games, and beachside relaxation. Enjoy delicious tropical drinks, tasty beachside snacks, and exciting activities for all ages. Whether you're soaking up the sun, dancing by the waves, or simply enjoying the laid-back vibe, this is the perfect way to make the most of summer. Bring your beachwear, your energy, and your friends for an unforgettable day by the sea!",
  starting_day: Date.today + 3.days,
  ending_day: Date.today + 3.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/ballet.jpeg'))
)

Event.create!(
  title: "Night Clubing",
  category: "Party",
  description: "Get ready to hit the dance floor at our electrifying nightclub event! Join us for an unforgettable night of pulsating beats, dazzling lights, and non-stop energy. Experience top DJs spinning the hottest tracks, enjoy signature cocktails, and dance the night away with friends in a vibrant, high-energy atmosphere. Whether you're a dance enthusiast or just looking for a great time, this is the ultimate nightlife experience you won't want to miss. Dress to impress and get ready for a night of fun and excitement!",
  starting_day: Date.today + 3.days,
  ending_day: Date.today + 3.days,
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/nightclub.webp'))
)

Event.create!(
  title: "New Year Celebration",
  category: "Party",
  description: "Ring in the New Year with a spectacular celebration! Join us for an unforgettable night as we welcome 2024 with style and excitement. Enjoy a festive evening filled with lively music, delicious food, and sparkling drinks. Dance the night away, toast to new beginnings, and be part of the countdown to midnight. With a vibrant atmosphere and joyful company, this New Year's celebration promises to be a memorable start to the year ahead. Don’t miss out on the fun and festivities as we celebrate new opportunities and cherished moments!",
  starting_day: Date.new(2024, 12, 31),
  ending_day: Date.new(2024, 12, 31),
  mode: "Public",
  capacity: rand(15..120),
  user: User.find_by(email: 'owner2@example.com'),
  photo: File.open(Rails.root.join('app/assets/images/NewYearCeleb.png'))
)
