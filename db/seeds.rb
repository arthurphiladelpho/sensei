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
    location: 'R. Aníbal de Mendonça, 112 - Ipanema, Rio de Janeiro - RJ, 22410-050',
    remote_photo_url: 'https://images.unsplash.com/photo-1527701758614-2b486f8c0d29?ixlib=rb-0.3.5&s=12f6b2a6f6c110664c7a94093fd57a18&auto=format&fit=crop&w=1868&q=80'
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
    location: 'Avenida Vieira Souto, 706 - Cobertura - Ipanema, Rio de Janeiro - RJ, 22420-012',
    remote_photo_url: 'https://images.unsplash.com/photo-1533049538263-16edab6dd9da?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0fe23faa23c67382dc5a07d8eeca7932&auto=format&fit=crop&w=1650&q=80'
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
    location: 'Praia do Arpoador - ⛉ Avenida Francisco Bhering, s/n - Ipanema, Rio de Janeiro - RJ, 22080-050',
    remote_photo_url: 'https://images.unsplash.com/photo-1534185372994-55f9e64235c4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4bb01a3e700bd64c384844381784ad43&auto=format&fit=crop&w=1650&q=80'
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
    location: 'R. Barão da Torre, 240 - a - Ipanema, Rio de Janeiro - RJ, 22411-000',
    remote_photo_url: 'https://images.unsplash.com/photo-1531326044450-7448d47f0b2c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=43cbb65b0553c55979ba1d5901409bdd&auto=format&fit=crop&w=1650&q=80'
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
    location: 'Leblon, Rio de Janeiro - State of Rio de Janeiro, 22410-002',
    remote_photo_url: 'https://images.unsplash.com/photo-1508919801845-fc2ae1bc2a28?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=de3a8532e9be6e0d3f35c15a471ed569&auto=format&fit=crop&w=1685&q=80'
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
    location: 'Av. Delfim Moreira - Leblon, Rio de Janeiro - RJ, 22441-000',
    remote_photo_url: 'https://images.unsplash.com/photo-1517760307355-e48f68215de6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=455969dd9fda6ec6b294ad2ea9deaebc&auto=format&fit=crop&w=1653&q=80'
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
    location: 'Av. Afrânio de Melo Franco, 290 - Leblon, Rio de Janeiro - RJ, 22430-060',
    remote_photo_url: 'https://images.unsplash.com/photo-1489494098705-24dcbf192bd3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=43686e06014ff5e2db860e7c9082d2f1&auto=format&fit=crop&w=1650&q=80'
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
    location: 'Av. Vieira Souto, S/N - Ipanema, Rio de Janeiro - RJ, 22420-002',
    remote_photo_url: 'https://images.unsplash.com/photo-1532444458054-01a7dd3e9fca?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0c7c30952a12819132abace293c4b971&auto=format&fit=crop&w=1712&q=80'
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
    location: 'Av. Delfim Moreira, 1202 - Leblon, Rio de Janeiro - RJ, 22441-000',
    remote_photo_url: 'https://images.unsplash.com/photo-1522725894451-26d946e23766?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3cd1f9c73289d9946d57e12dad35325&auto=format&fit=crop&w=1651&q=80'
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
    location: 'Rua Dias Ferreira, 256 - Leblon, Rio de Janeiro - RJ, 22431-050',
    remote_photo_url: 'https://images.unsplash.com/photo-1518622358385-8ea7d0794bf6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=42226a7bf3b99eec89267859b4f36114&auto=format&fit=crop&w=1650&q=80'
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
    location: 'Av. Borges de Medeiros, 997 - Lagoa, Rio de Janeiro - RJ, 22430-041',
    remote_photo_url: 'https://images.unsplash.com/photo-1517498559795-28a423c31125?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d40d06e284aae2df1f87cd17be6e68f7&auto=format&fit=crop&w=1650&q=80'
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
    remote_photo_url: 'https://images.unsplash.com/photo-1510707930694-6142f1d7eca3?ixlib=rb-0.3.5&s=738bf606f1b10bde4b4b9ef7f7e6f2fa&auto=format&fit=crop&w=1780&q=80'
  }
)
puts "12 Lessons successfully created!"

