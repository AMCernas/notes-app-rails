
Admin.find_or_create_by!(email: 'user@email.com') do |admin|
    admin.password = 'password123'
    admin.password_confirmation = 'password123'
  end

User.find_or_create_by(name: 'user') do |user|
  user.status = "author"
  user.user_num = "111111"
end