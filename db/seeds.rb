@user = User.create(email: "test1@test.com",
                    password: "test1test",
                    password_confirmation: "test1test",
                    first_name: "John",
                    last_name: "Smith",
                    phone: "3378573118")

puts "1 user created"

AdminUser.create(email: "admin@test.com",
                  password: "admintest",
                  password_confirmation: "admintest",
                  first_name: "Admin",
                  last_name: "User",
                  phone: "3378573118")

puts "1 admin user created"


100.times do |post|
  Post.create!(date: Date.today,
                rationale: "#{post} rationale content",
                user_id: @user.id,
                overtime_request: 2.5)
end

puts "100 posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id,
                    status: 0,
                    start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"
