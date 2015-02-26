require 'faker'


10.times do
  Todo.create(
    task: Faker::Lorem.sentence
    )

end