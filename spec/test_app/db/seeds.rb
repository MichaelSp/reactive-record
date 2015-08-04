users = [
  ["Mitch", "VanDuyn", "mitch@catprint.com"],
  ["Todd", "Russell", "todd@catprint.com"],
  ["Adam", "George", "adamg@catprint.com"]
]

users.each do |first_name, last_name, email|
  User.create({
    first_name: first_name, last_name: last_name, email: email, 
    address_street: "4348 Culver Road", address_city: "Rochester", address_state: "NY", address_zip: "14617"
    }, 
    without_protection: true
  )
end

todo_items = [
  {title: "a todo for mitch", description: "mitch has a big fat todo to do!", user: User.find_by_email("mitch@catprint.com")},
  {title: "another todo for mitch", description: "mitch has too many todos", user: User.find_by_email("mitch@catprint.com")},
  {title: "do it again Todd", description: "Todd please do that great thing you did again", user: User.find_by_email("todd@catprint.com")}
  ]

todo_items.each do |attributes|
  TodoItem.create(attributes, without_protection: true)
end