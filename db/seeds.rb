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
4.times do |i|
  User.create!(
    email: "client#{i + 1}@example.com",
    password: 'password',
    full_name: "Client User #{i + 1}",
    admin: false,
    status: 'client'
  )
end
