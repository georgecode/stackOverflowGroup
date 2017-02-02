5.times do
User.create!(
    name: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password_hash: "password"
  )
end

5.times do
Question.create!(
    q_title: Faker::Internet.user_name,
    user_id: rand(1..5)
  )
end

# :q_title
#       t.integer :user_id

5.times do
Answer.create!(
    a_title: Faker::Internet.user_name,
    user_id: rand(1..5),
    question_id: rand(1..5)

  )
end