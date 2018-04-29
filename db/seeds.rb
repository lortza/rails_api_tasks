User.destroy_all

qty = 10
boolean_options = [true, false]

qty.times do
  user = User.create!({name: Faker::Cat.name})
  qty.times do
    user.tasks.create!([
      {name: Faker::Hipster.sentence, complete: boolean_options.sample, priority: boolean_options.sample}
    ])
  end
end

# user = User.create!({name: "Alejandro"})
# user.tasks.create!([
#   {name: "Hunt for lizards", complete: true, priority: false},
#   {name: "Mow the lawn", complete: false, priority: false},
#   {name: "Write Readme doc", complete: false, priority: true}

# ])
