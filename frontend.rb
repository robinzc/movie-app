require "http"

#All movies
response = HTTP.get("http://localhost:3000/api/all_movies")
movies = response.parse
pp movies

#Single movie
response = HTTP.get("http://localhost:3000/api/single_movie/1")
movies = response.parse
pp movies