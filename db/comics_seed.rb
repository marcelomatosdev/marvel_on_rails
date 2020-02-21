# frozen_string_literal: true

def comics_url(offset)
  "#{@base_url}comics?orderBy=-onsaleDate&limit=100&offset=#{offset}&#{@authorization}"
end

number_of_comics = 20 #There are about 46,000 comics available in the Marvel API
i = 0
@count = 100
# while @count == 100
while i < number_of_comics
  comics = marvel_fetch(comics_url(i))
  results = comics['data']['results']

  @count = results.count
  results.each do |result|
    id = result['id']
    title = result['title']
    description = result['description']
    pages = result['pageCount']
    thumbnail_path = result['thumbnail']['path']
    thumbnail_extension = result['thumbnail']['extension']
    id_result = Comic.find_by_id(id)
    unless id_result
      Comic.create(id: id, title: title, description: description, page_count: pages, thumbnail_path: thumbnail_path, thumbnail_extension: thumbnail_extension)
    end
  end
  i += 100
end

puts "Generated #{Comic.count} comics."
