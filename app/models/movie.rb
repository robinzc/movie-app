class Movie < ApplicationRecord
  
  validates :title, presence: true
  validates :year, length: { is: 4 }
  validates :plot, length: { in: 2..500 }
  validates :director, presence: true

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres 

end
