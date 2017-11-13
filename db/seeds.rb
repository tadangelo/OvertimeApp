@user = User.create(email: "test1@test.com", password: "test1test", password_confirmation: "test1test", first_name: "John", last_name: "Smith")

puts "1 user created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"
