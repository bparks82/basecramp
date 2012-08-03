Fabricator(:user) do
  email { sequence{|i|"#{Faker::Internet.email} (#{i})"}}
  password {"password"}
  password_confirmation {"password"}
end
