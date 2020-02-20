# frozen_string_literal: true

i = 0
40.times do
  dc = Faker::DcComics.unique.villain
  puts dc
  i += 1
end
puts i
