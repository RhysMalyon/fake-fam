# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ROLES = ["Mum", "Dad", "Girlfriend", "Boyfriend", "Sister", "Brother", "Aunty", "Uncle", "Son", "Daughter", "Niece", "Nephew", "Grandpa", "Grandma"]

puts "Destroying everything - waaaaaaaaa!"
Role.destroy_all
User.destroy_all
Booking.destroy_all

puts " Creating roles..."

10.times do
  Role.create!(
    role: ROLES.sample,
    price: rand(3000..10_000),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta."
  )
end

puts "Creating users..."

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    age: rand(18..90),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
end

puts "Created Users and Roles... now creating bookings..."

User.find_each do |u|
  Role.find_each do |r|
    Booking.create!(
      start_time: Faker::Time.forward(days: 23, period: :morning, format: :short),
      end_time: Faker::Time.forward(days: 23, period: :evening, format: :short),
      location: Faker::Address.city,
      category: "Lorem ipsum dolor",
      status: rand(0..2),
      user: u,
      role: r
    )
  end
end


puts "Created #{Role.count} roles, #{User.count} users, and #{Booking.count} bookings."
