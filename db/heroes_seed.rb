# frozen_string_literal: true

def characters_url(offset)
  "#{@base_url}characters?limit=100&offset=#{offset}&#{@authorization}"
end

i = 0
@count = 100
# while @count == 100
while i < 200
  characters = marvel_fetch(characters_url(i))
  results = characters['data']['results']
  @count = results.count
  results.each do |result|
    planet = Planet.all.sample
    id = result['id']
    name = result['name']
    description = result['description']
    thumbnail_path = result['thumbnail']['path']
    thumbnail_extension = result['thumbnail']['extension']
    villain = Faker::DcComics.villain
    planet.heros.create(name: name, id: id, description: description, thumbnail_path: thumbnail_path, thumbnail_extension: thumbnail_extension, villain: villain)
  end
  i += 100
end

puts "Generated #{Hero.count} heros."
