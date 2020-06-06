# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DEFAULT_PASSWORD = 123_456

users = [
  {
    full_name: 'Admin',
    username: 'admin',
    email: 'admin@admin.com.br',
    password: DEFAULT_PASSWORD,
    password_confirmation: DEFAULT_PASSWORD,
    admin: true
  }
]

3.times do
  users.push(
    full_name: FFaker::Name.name,
    username: FFaker::Internet.user_name,
    email: FFaker::Internet.email,
    password: DEFAULT_PASSWORD,
    password_confirmation: DEFAULT_PASSWORD,
    admin: true
  )
end

users.each do |user|
  User.create!(user)
end



