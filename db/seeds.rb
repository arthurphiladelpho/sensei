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
  price: 100
}
)
Lesson.create(
{
  name: 'Beach Run',
  description: 'Fun run along the sand',
  style: 'cardio',
  difficulty: 2,
  duration: 45,
  price: 20
}
)
Lesson.create(
{
  name: 'Interval Session',
  description: 'Run/Jog intervals',
  style: 'cardio',
  difficulty: 3,
  duration: 60,
  price: 40
}
)
Lesson.create(
{
  name: 'Body Weight Training',
  description: 'Introduction to Calistenics',
  style: 'strength',
  difficulty: 1,
  duration: 60,
  price: 100
}
)
Lesson.create(
{
  name: 'Bendy Bodies',
  description: 'An intermediate flexibility session utilising the calm zen power of goats',
  style: 'flexibility',
  difficulty: 2,
  duration: 120,
  price: 220
}
)

puts "5 Lessons successfully created!"
