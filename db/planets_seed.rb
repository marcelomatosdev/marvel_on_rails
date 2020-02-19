# frozen_string_literal: true

def swapi_fetch(url)
  JSON.parse(open(url).read)
end
i = 1
while i < 8
  def planets_url(page)
    "https://swapi.co/api/planets?page=#{page}"
  end
  planets = swapi_fetch(planets_url(i))
  results = planets['results']
  results.each do |result|
    name = result['name']
    Planet.create(name: name)
  end
  i += 1
end
puts "Generated #{Planet.count} planets."
