# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all previous Lessons..."
Lesson.delete_all


puts "Creating 5 unique valid Lessons..."
Lesson.create(
{
  name: 'Yoga',
  description: 'A gentle session',
  style: 'strength',
  difficulty: 1,
  duration: 60,
  price: 100,
  location: "R. Visc. de Pirajá, 495 - Ipanema, Rio de Janeiro - RJ, 22410-002"
}
)
Lesson.create(
{
  name: 'Beach Run',
  description: 'Fun run along the sand',
  style: 'cardio',
  difficulty: 2,
  duration: 45,
  price: 20,
  location: "Posto 8, Av. Vieira Souto, S/N - Ipanema, Rio de Janeiro - RJ, 22420-002"
}
)
Lesson.create(
{
  name: 'Interval Session',
  description: 'Run/Jog intervals',
  style: 'cardio',
  difficulty: 3,
  duration: 60,
  price: 40,
  location: "Praça Nossa Senhora da Paz Ipanema, Rio de Janeiro RJ, 22420-030 - Ipanema, Rio de Janeiro - RJ, 22420-030"
}
)
Lesson.create(
{
  name: 'Body Weight Training',
  description: 'Introduction to Calistenics',
  style: 'strength',
  difficulty: 1,
  duration: 60,
  price: 100,
  location: "Av. Delfim Moreira, 1202 - Leblon, Rio de Janeiro - RJ, 22441-000"
}
)
Lesson.create(
{
  name: 'Bendy Bodies',
  description: 'An intermediate flexibility session utilising the calm zen power of goats',
  style: 'flexibility',
  difficulty: 2,
  duration: 120,
  price: 220,
  location: "R. Nossa Sra. de Fátima, 7 - Ipanema, Rio de Janeiro - RJ, 22071-060"
}
)

puts "5 Lessons successfully created!"
# ______________________________________________________________________________


puts "Deleting all previous Bookings..."
Booking.delete_all
puts "Creating bookings..."

Booking.create({
  user_id: 5,
  lesson_id: 27,
  datetime: 'January 2019 12 pm'
})

Booking.create({
  user_id: 6,
  lesson_id: 28,
  datetime: 'January 2019 14 pm'
})

puts "2 Bookings successfully created!"
