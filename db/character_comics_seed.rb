# frozen_string_literal: true

Hero.all.each do |character|
  @character = character
  def characters_url(offset)
    "#{@base_url}characters/#{@character.id}/comics?limit=100&offset=#{offset}&#{@authorization}"
  end

  i = 0
  @count = 100
  # while @count == 100
  while i < 100
    characters = marvel_fetch(characters_url(i))
    results = characters['data']['results']
    @count = results.count
    results.each do |result|
      id = result['id']

      comic_result = Comic.find_by_id(id)
      if comic_result
        CharacterComic.create(hero: character, comic: comic_result)
      end
    end
    i += 100
  end
end

puts "Generated #{CharacterComic.count} links between heros and comics."
