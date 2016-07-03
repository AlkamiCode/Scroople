user         = User.create(username: "dmitry", email: "dmitry@alkami.io", password: "alkami21")
agency       = Agency.create(user_id: user.id)

# social_icon1 = SocialIcon.create(title: "fa fa-facebook", url: "https://www.facebook.com/alkami.io", user_id: user.id)
# social_icon2 = SocialIcon.create(title: "fa fa-twitter", url: "https://twitter.com/AlkamiWeb", user_id: user.id)
# social_icon3 = SocialIcon.create(title: "fa fa-linkedin", url: "https://www.linkedin.com/company/alkami", user_id: user.id)

# social_icon4 = SocialIcon.create(title: "fa fa-facebook", url: "https://www.facebook.com/alkami.io", user_id: user.id)
# social_icon5 = SocialIcon.create(title: "fa fa-twitter", url: "https://twitter.com/AlkamiWeb", user_id: user.id)
# social_icon6 = SocialIcon.create(title: "fa fa-linkedin", url: "https://www.linkedin.com/company/alkami", user_id: user.id)

# social_icon7 = SocialIcon.create(title: "fa fa-facebook", url: "https://www.facebook.com/alkami.io", user_id: user.id)
# social_icon8 = SocialIcon.create(title: "fa fa-twitter", url: "https://twitter.com/AlkamiWeb", user_id: user.id)
# social_icon9 = SocialIcon.create(title: "fa fa-linkedin", url: "https://www.linkedin.com/company/alkami", user_id: user.id)

puts "#{user.username} successfully created along with #{agency}"
# puts "#{user.social_icons}"
