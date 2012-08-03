Fabricator(:list) do
  title { sequence{|i|"#{Faker::Lorem.sentence} (#{i})"}}
  project!
end
