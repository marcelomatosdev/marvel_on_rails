# frozen_string_literal: true

def comics_url(offset)
  "#{@base_url}comics?orderBy=-onsaleDate&characters=1009165&limit=100&offset=#{offset}&#{@authorization}"
end

i = 0
@count = 100
# while @count == 100
while i < 100
  comics = marvel_fetch(comics_url(i))
  results = comics['data']['results']
  # puts results
  @count = results.count
  results.each do |result|
    id = result['id']
    title = result['title']
    description = result['description']
    pages = result['pageCount']
    thumbnail_path = result['thumbnail']['path']
    thumbnail_extension = result['thumbnail']['extension']
    image_path = result['images'][0]['path']
    image_extension = result['images'][0]['extension']
    Comic.create(id: id, title: title, description: description, page_count: pages, thumbnail_path: thumbnail_path, thumbnail_extension: thumbnail_extension, image_path: image_path, image_extension: image_extension)
  end
  i += 101
end

puts "Generated #{Comic.count} comics."
