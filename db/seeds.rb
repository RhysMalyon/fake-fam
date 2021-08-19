require "open-uri"

puts "Destroying everything - waaaaaaaaa!"
Role.destroy_all
User.destroy_all

puts "Creating Allen..."

1.times do
  user = User.create!(
    first_name: "Kochapas",
    last_name: "Santibut",
    email: "allen@iknowprogramming.com",
    password: '123123',
    age: 23,
    bio: "Challenge me to Codewars, I dare you.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/allen.jpg')), filename: 'allen.jpg', content_type: 'image/jpg')
end

puts "Adding role to Allen..."

Role.create!(
  name: "boyfriend",
  price: 5000,
  bio: "I'm married so I know a lot about relationships.",
  user: User.find(1)
)

puts "Creating Anthony..."

1.times do
  user = User.create!(
    first_name: "Anthony",
    last_name: "Johnson",
    email: "aj@engineering.com",
    password: '123123',
    age: 31,
    bio: "I am from Australia, where is was working in Civil Engineering and Civil Construction. I moved to Japan in 2019 and began teaching English. I plan to change careers to Web Engineer.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/anthony.jpg')), filename: 'anthony.jpg', content_type: 'image/jpg')
end

puts "Adding role to Anthony..."

Role.create!(
  name: "dad",
  price: 7500,
  bio: "I'm like the dad of the group.",
  user: User.find(2)
)

puts "Creating Cheri..."

1.times do
  user = User.create!(
    first_name: "Cheri",
    last_name: "Kennedy",
    email: "cheri@kiwidev.com",
    password: '123123',
    age: 31,
    bio: "I come from a media background in NZ, but for the past five years, I've been teaching English in Japan. I'm looking to change careers, and I'm excited to jump into the tech industry as a developer!",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/cheri.jpg')), filename: 'cheri.jpg', content_type: 'image/jpg')
end

puts "Adding role to Cheri..."

Role.create!(
  name: "sister",
  price: 500,
  bio: "I have a sister so I know what I'm doing. Trust me.",
  user: User.find(3)
)

puts "Creating Daniel..."

1.times do
  user = User.create!(
    first_name: "Daniel",
    last_name: "Rabottini",
    email: "dantheman@lifeonthebeach.com",
    password: '123123',
    age: 31,
    bio: "Hi everyone, my name is Daniel. I am currently living in Shizuoka, Japan. I have worked as a project manager in multiple industries, but I am hoping to transition my career to a more developmental role through the coding bootcamp. I have very minimal experience in coding. so this will be a very new thing for me. Looking forward to meeting everyone. ",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/daniel.jpg')), filename: 'daniel.jpg', content_type: 'image/jpg')
end

puts "Adding role to Daniel..."

Role.create!(
  name: "brother",
  price: 2500,
  bio: "Everyone calls me bro so I decided to embrace it.",
  user: User.find(4)
)

puts "Creating Derek..."

1.times do
  user = User.create!(
    first_name: "Derek",
    last_name: "Torres",
    email: "derek@socklover69.co.jp",
    password: '123123',
    age: 28,
    bio: "Hey everyone! I'm from America and currently living in Tokyo. I was an English teacher for 3 and a half years and am excited to try to break into the tech world. I'd like to become a full stack developer one day. In my free time I like to run, play games, and study Japanese. Looking forward to getting to know you all.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/derek.jpg')), filename: 'derek.jpg', content_type: 'image/jpg')
end

puts "Adding role to Derek..."

Role.create!(
  name: "boyfriend",
  price: 25000,
  bio: "I like skating and sniffing socks before I wash them.",
  user: User.find(5)
)

puts "Creating Jose..."

1.times do
  user = User.create!(
    first_name: "Jose",
    last_name: "Miranda",
    email: "jose@lewagon.co.jp",
    password: '123123',
    age: 25,
    bio: "Used to work as a Quality technician. Want to start a new career path within the IT industry and I hope to learn all the basics with this Lewagon program.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/jose.jpg')), filename: 'jose.jpg', content_type: 'image/jpg')
end

puts "Adding role to Jose..."

Role.create!(
  name: "dad",
  price: 15000,
  bio: "I have a quiet determination that makes me trustworthy.",
  user: User.find(6)
)

puts "Creating Ope..."

1.times do
  user = User.create!(
    first_name: "Opemipo",
    last_name: "Dada",
    email: "ope@theboss.co.jp",
    password: '123123',
    age: 21,
    bio: "Hi everyone, my name is Ope. My career background is in sales/customer relations and logistics(warehousing) back in Nigeria. I joined le wagon because I am interested in web development and I am hoping to switch my career path to a tech-related role. After the Bootcamp, I plan to keep learning and developing the skills I would have gained, and hopefully get a job in the tech industry. ",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/ope.jpg')), filename: 'ope.jpg', content_type: 'image/jpg')
end

puts "Adding role to Ope..."

Role.create!(
  name: "girlfriend",
  price: 50000,
  bio: "I'm expensive but worth every yen.",
  user: User.find(7)
)

puts "Creating Sae..."

1.times do
  user = User.create!(
    first_name: "Sae",
    last_name: "Shikiji",
    email: "sae@design.co.jp",
    password: '123123',
    age: 22,
    bio: "I am a university student in Tokyo, graduating in 2022! I am currently interning at a career advising company as a graphic designer and wanted to learn web development to gain more skills and open more possibilities.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/sae.jpg')), filename: 'sae.jpg', content_type: 'image/jpg')
end

puts "Adding role to Sae..."

Role.create!(
  name: "mum",
  price: 20000,
  bio: "I've kept a tamagotchi alive for 20 years.",
  user: User.find(8)
)

puts "Creating Viddy..."

1.times do
  user = User.create!(
    first_name: "David",
    last_name: "Gregorato",
    email: "viddy@greggy.co.jp",
    password: '123123',
    age: 22,
    bio: "Trying to be a more convincing human... ",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/viddy.jpg')), filename: 'viddy.jpg', content_type: 'image/jpg')
end

puts "Adding role to Viddy..."

Role.create!(
  name: "boyfriend",
  price: 100000,
  bio: "My milkshake brings all the boys to the yard. It's an expensive milkshake.",
  user: User.find(9)
)

puts "Creating Kevin..."

1.times do
  user = User.create!(
    first_name: "Kevin",
    last_name: "Konczak",
    email: "kevin@frontendguy.com",
    password: '123123',
    age: 39,
    bio: "Kevin, from France. Currently a web designer for a Japanese language school. I enrolled in Le Wagon to get more skills in development and build things for my company.",
    location: Faker::Address.city
  )
  user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/kevin.jpg')), filename: 'kevin.jpg', content_type: 'image/jpg')
end

puts "Adding role to Kevin..."

Role.create!(
  name: "brother",
  price: 3000,
  bio: "I can make you a website at the same time. Trust me.",
  user: User.find(10)
)

male_roles = %w[dad brother boyfriend]

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(11)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(12)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(13)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(14)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(15)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(16)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(17)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(18)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(19)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?man')
  user = User.create!(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: male_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(20)
)


female_roles = %w[mum sister girlfriend]

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(21)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(22)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(23)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(24)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(25)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(26)
)
1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(27)
)
1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(28)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(29)
)

1.times do
  puts "Creating new user..."

  file = URI.open('https://source.unsplash.com/featured/?woman')
  user = User.create!(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    password: '123123',
    age: rand(18..60),
    bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
    location: Faker::Address.city
  )
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

puts " Creating roles..."

Role.create!(
  name: female_roles.sample,
  price: rand(3000..10_000),
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
  user: User.find(30)
)

puts "Created #{Role.count} roles and #{User.count} users."
# require "open-uri"

# puts "Destroying everything - waaaaaaaaa!"
# Role.destroy_all
# User.destroy_all

# puts "Creating users..."

# 20.times do
#   file = URI.open('https://thispersondoesnotexist.com/image')
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.safe_email,
#     password: '123123',
#     age: rand(18..90),
#     bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
#     location: Faker::Address.city
#   )
#   user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
# end

# puts " Creating roles..."

# User.find_each do |u|
#   Role.create!(
#     name: Role::ROLES.sample,
#     price: rand(3000..10_000),
#     bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, consequuntur. Quisquam, fugiat ducimus maiores reprehenderit nobis doloribus. Vel id sed magni ad accusamus, aliquam numquam quisquam sapiente natus amet soluta.",
#     user: u
#   )
# end

# puts "Created #{Role.count} roles and #{User.count} users."

# ## BOOKINGS SEEDS ##

# # Booking.destroy_all

# # puts "Created Users and Roles... now creating bookings..."
# # roles = Role.all

# # User.find_each do |u|
# #   Booking.create!(
#   #     start_time: Faker::Time.forward(days: 23, period: :morning, format: :short),
#   #     end_time: Faker::Time.forward(days: 23, period: :evening, format: :short),
#   #     location: Faker::Address.city,
#   #     category: "Lorem ipsum dolor",
#   #     status: rand(0..2),
#   #     user: u,
#   #     role: roles.sample
#   #   )
#   # end
