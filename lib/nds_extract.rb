$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  director_index = 0 
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    movie_index = 0
    movie_gross = 0 
    while movie_index < nds[director_index][:movies].length do
      movie_gross += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[director_name] = movie_gross
    director_index += 1
  end
  return result
end

