Fabricator(:project) do
  name { sequence{|i|"#{Faker::Lorem.sentence} (#{i})"}}
  public false
end

