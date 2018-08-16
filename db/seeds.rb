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

puts "Deleting all previous Lessons..."
Lesson.delete_all

puts "Creating 12 unique valid Lessons..."
Lesson.create(
  {
    name: 'Yoga',
    description: 'A gentle session',
    style: 'strength',
    difficulty: 1,
    duration: 60,
    price: 100,
    location: 'R. Aníbal de Mendonça, 112 - Ipanema, Rio de Janeiro - RJ, 22410-050'
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
    location: 'Avenida Vieira Souto, 706 - Cobertura - Ipanema, Rio de Janeiro - RJ, 22420-012'
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
    location: 'Praia do Arpoador - ⛉ Avenida Francisco Bhering, s/n - Ipanema, Rio de Janeiro - RJ, 22080-050'
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
    location: 'R. Barão da Torre, 240 - a - Ipanema, Rio de Janeiro - RJ, 22411-000'
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
    location: 'Leblon, Rio de Janeiro - State of Rio de Janeiro, 22410-002'
  }
)
Lesson.create(
  {
    name: 'Yoga',
    description: 'A gentle session',
    style: 'strength',
    difficulty: 1,
    duration: 60,
    price: 100,
    location: 'Av. Delfim Moreira - Leblon, Rio de Janeiro - RJ, 22441-000'
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
    location: 'Av. Afrânio de Melo Franco, 290 - Leblon, Rio de Janeiro - RJ, 22430-060'
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
    location: 'Av. Vieira Souto, S/N - Ipanema, Rio de Janeiro - RJ, 22420-002'
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
    location: 'Av. Delfim Moreira, 1202 - Leblon, Rio de Janeiro - RJ, 22441-000'
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
    location: 'Rua Dias Ferreira, 256 - Leblon, Rio de Janeiro - RJ, 22431-050'
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
    location: 'Av. Borges de Medeiros, 997 - Lagoa, Rio de Janeiro - RJ, 22430-041'
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
    location: 'Av. Epitácio Pessoa, S/N - Ipanema, Rio de Janeiro - RJ, 22471-003',
  }
)
puts "12 Lessons successfully created!"

