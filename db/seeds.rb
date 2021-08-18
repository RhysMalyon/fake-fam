require "open-uri"

puts "Destroying everything - waaaaaaaaa!"
Role.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users..."

10.times do
  file = URI.open('https://thispersondoesnotexist.com/image')
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..90),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

User.find_each do |u|
  Role.create!(
    name: Role::ROLES.sample,
    price: rand(3000..10_000),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    user: u
  )
end

puts "Created Users and Roles... now creating bookings..."
roles = Role.all

User.find_each do |u|
  Booking.create!(
    start_time: Faker::Time.forward(days: 23, period: :morning, format: :short),
    end_time: Faker::Time.forward(days: 23, period: :evening, format: :short),
    location: Faker::Address.city,
    category: "Lorem ipsum dolor",
    status: rand(0..2),
    user: u,
    role: roles.sample
  )
end

puts "Created #{Role.count} roles, #{User.count} users, and #{Booking.count} bookings."
