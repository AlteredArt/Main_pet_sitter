Appointment.destroy_all
Owner.destroy_all
Pet.destroy_all



owner1 = Owner.create(first_name: "Doug", last_name: "billings")
owner2 = Owner.create(first_name: "John", last_name: "Smith")
owner3 = Owner.create(first_name: "Bill", last_name: "White")
owner1 = Owner.create(first_name: "Tom", last_name: "Hanks")


pet1 = Pet.create(name: "waffles",kind: "cat",age: 11)
pet2 = Pet.create(name: "chloe",kind: "cat",age: 4)
pet3 = Pet.create(name: "harley",kind: "dog",age: 9)
pet4 = Pet.create(name: "waffle",kind: "cat",age: 7)
pet5 = Pet.create(name: "cookie",kind: "cat",age: 6)

sitter1 = Sitter.create(name_of_company: "Walk a Dog")
sitter2 = Sitter.create(name_of_company: "Pet a Cat")
sitter3 = Sitter.create(name_of_company: "Doggie Days")
sitter4 = Sitter.create(name_of_company: "Feed a Cat")

appointment1 = Appointment.create(date: , pet: "Waffles",sitter: "Walk the Dog")
