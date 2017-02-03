# 5.times do
# User.create!(
#     name: Faker::Internet.user_name,
#     email: Faker::Internet.email,
#     password: "password"
#   )
# end

User.create!(
    name: "dbare",
    email: "dbare@mail.com",
    password: "password"
  )

# 5.times do
# Question.create!(
#     q_title: Faker::Internet.user_name,
#     user_id: User.all.sample.id
#   )
# end

Question.create!(
    q_title: 'Does a giraffe wear a necktie at the bottom of his neck or the top?',
    user_id: 1
)

Question.create!(
    q_title: 'If a car were to wear pants, would it cover all 4 wheels of the car or just the rear wheels and the trunk?',
    user_id: 1
)

Question.create!(
    q_title: 'Is a burrito a sandwich?',
    user_id: 1
)

Question.create!(
    q_title: 'If you could pick one Nick Cage character to be, which one would you pick?',
    user_id: 1
)

Question.create!(
    q_title: "Is the 'S' or 'C' silent in 'scent'?",
    user_id: 1
)

Question.create!(
    q_title: "If 2 mind readers read each others minds, who's mind are they reading?",
    user_id: 1
)

Question.create!(
    q_title: 'If 2 vegans are arguing, is it still considered beef?',
    user_id: 1
)

Question.create!(
    q_title: "What would happen if Pinocchio said 'My nose is growing'?",
    user_id: 1
)


# :q_title
#       t.integer :user_id

# 5.times do
# Answer.create!(
#     a_title: Faker::Internet.user_name,
#     user_id: User.all.sample.id,
#     question_id: rand(1..5)

#   )
# end