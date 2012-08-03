Fabricator(:todo) do
  name { sequence{|i|"#{Faker::Lorem.sentence} (#{i})"}}
  due_date {Faker::Date.date}
  list!
end