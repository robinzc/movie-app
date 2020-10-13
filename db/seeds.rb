Movie.create!([
  {title: "Disclosure", year: 2020, plot: "A groundbreaking documentary about the depiction of transgender people in film and television.", director: nil, english: true},
  {title: "L'auberge espagnole", year: 2002, plot: "This film follows the experiences of a French student who goes to study Spanish in Barcelona.", director: "Cédric Klapisch", english: false},
  {title: "Frida", year: 2002, plot: "An artful film about the life of world-renowned Mexican artist Frida Kahlo.", director: "Julie Taymor", english: true},
  {title: "Kung Fu Hustle", year: 2004, plot: "A Stephen Chow slapstick action-comedy martial arts epic.", director: "Stephen Chow", english: false},
  {title: "The Motorcycle Diaries", year: 2004, plot: "This film chronicles the young Ernesto 'Che' Guevara's journey through South America by motorcycle before his days as a revolutionary.", director: "Walter Salles", english: false},
  {title: "Palm Springs", year: 2020, plot: "A man and woman in Palm Springs for a wedding have to navigate the adventures resulting from an accidental fall in a hole in the space-time continuum.", director: "Matt Barbakow", english: true},
  {title: "Manos: Hands of Fate", year: 1966, plot: "Considered the worst horror movie ever made, this cheesy flick is worth your time. Bring snacks.", director: "", english: true},
  {title: "Misc - no movie associated", year: 0, plot: "N/A", director: "N/A", english: true}
])
Actor.create!([
  {first_name: "Gael", last_name: "Garcia Bernal", known_for: "The Motorcycle Diaries, Y Tu Mama Tambien", gender: "male", age: 41, movie_id: 5},
  {first_name: "Andy", last_name: "Samberg", known_for: "Palm Springs", gender: "male", age: 42, movie_id: 6},
  {first_name: "Jodie", last_name: "Comer", known_for: "Killing Eve", gender: "female", age: 27, movie_id: 8},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 44, movie_id: 8},
  {first_name: "Kate", last_name: "McKinnon", known_for: "Saturday Night Live", gender: "female", age: 36, movie_id: 8},
  {first_name: "Amy", last_name: "Poehler", known_for: "Parks and Rec", gender: "female", age: 49, movie_id: 8},
  {first_name: "Tina", last_name: "Fey", known_for: "Saturday Night Live", gender: "female", age: 50, movie_id: 8}
])
Genre.create!([
  {genre: "thriller"},
  {genre: "romcom"},
  {genre: "LGBTQ+"},
  {genre: "action"},
  {genre: "foreign"},
  {genre: "comedy"},
  {genre: "animation"},
  {genre: "crime"},
  {genre: "drama"},
  {genre: "fantasy"},
  {genre: "sci-fi"},
  {genre: "musical"},
  {genre: "biopic"},
  {genre: "documentary"}
])

MovieGenre.create!([
  {genre_id: 2, movie_id: 1},
  {genre_id: 3, movie_id: 2},
  {genre_id: 1, movie_id: 6},
  {genre_id: 5, movie_id: 8},
  {genre_id: 13, movie_id: 3},
  {genre_id: 4, movie_id: 4},
  {genre_id: 13, movie_id: 5},
  {genre_id: 3, movie_id: 2}
])
User.create!([
  {name: "Flomar", email: "flomar@flomar.com", password_digest: "$2a$12$k7DJlXXBbu/2rUp6PdYdOumS2EcEaHDgLkguQTPiH4qK9Mje97PJ6", admin: false},
  {name: "Clara", email: "clara@clara.com", password_digest: "$2a$12$V8nRtBkRL1NRnREj8k6jEeIxdLOaQQikoLUYtVOluE73v22SxeQUe", admin: false},
  {name: "Zarru", email: "zarru@zarru.com", password_digest: "$2a$12$EvzoHHjeHIfhyF2D6P/MSOVRdKZFvTgRG5JRVKh5Mo8y9QURQxOJq", admin: false}
])
