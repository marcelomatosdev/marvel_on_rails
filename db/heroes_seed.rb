# frozen_string_literal: true

Hero.destroy_all

def characters_url(offset)
  "#{@base_url}characters?offset=#{offset}&#{@authorization}"
end

i = 0
@count = 20
while @count == 20
  # while i < 60
  characters = marvel_fetch(characters_url(i))
  results = characters['data']['results']
  @count = results.count
  results.each do |result|
    id = result['id']
    name = result['name']
    Hero.create(name: name, id: id)
  end
  i += 20
end

puts "Generated #{Hero.count} heros."
