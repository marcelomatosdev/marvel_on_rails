# frozen_string_literal: true

CharacterComic.destroy_all
Comic.destroy_all
Hero.destroy_all
Planet.destroy_all

require 'open-uri'
require 'json'
require 'digest/md5'

timestamp = 1.to_s
require_relative '../config/authorization.rb'
public_key = '9f15a9eb294cde58d5afb8e2f27ad624'
digest = Digest::MD5.hexdigest(timestamp + @private_key + public_key)

@base_url = 'http://gateway.marvel.com/v1/public/'
@authorization = 'ts=1&apikey=9f15a9eb294cde58d5afb8e2f27ad624&hash=2dfe1145467986ae6fcee19b52a480db'

def marvel_fetch(url)
  JSON.parse(open(url).read)
end

# Populate the Planet database
require_relative 'planets_seed.rb'

# Populate the Hero database
require_relative 'heroes_seed.rb'

# Populate the Comic database
require_relative 'comics_seed.rb'

# Populate the Character_Comic join database
require_relative 'character_comics_seed.rb'
