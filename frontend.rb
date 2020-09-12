require "http"

#All movies
response = HTTP.get("http://localhost:3000/api/movies")
movies = response.parse
pp movies

#Single movie
response = HTTP.get("http://localhost:3000/api/show/1")
movies = response.parse
pp movies