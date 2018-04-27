User.destroy_all

user = User.create!({name: "Zorro"})
user.tasks.create!([
  {name: "Go to store", complete: true, priority: false},
  {name: "Build Rails API", complete: false, priority: true},
  {name: "Build React front end", complete: false, priority: true}

])

user = User.create!({name: "Alejandro"})
user.tasks.create!([
  {name: "Hunt for lizards", complete: true, priority: false},
  {name: "Mow the lawn", complete: false, priority: false},
  {name: "Write Readme doc", complete: false, priority: true}

])
