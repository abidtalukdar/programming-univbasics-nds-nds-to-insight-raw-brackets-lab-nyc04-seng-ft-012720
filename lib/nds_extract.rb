$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  nds = directors_database
  directors_total = {}
  row_index = 0
  while row_index < nds.length do
    name = nds[row_index][:name]
    directors_total[name] = 0
    movies_list = nds[row_index][:movies]
    column_index = 0
    while column_index < movies_list.length do
      directors_total[name] += movies_list[column_index][:worldwide_gross]
      column_index +=1
    end
    row_index += 1
  end
  return directors_total
end 

