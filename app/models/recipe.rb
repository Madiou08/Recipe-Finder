#contents of app/models/recipe.rb
class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = '3a66e1728a944d6a31b337d4c491af0a'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end