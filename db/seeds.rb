Appointment.destroy_all
Owner.destroy_all
Pet.destroy_all



owner1 = Owner.create(first_name: "Doug", last_name: "Billings")
owner2 = Owner.create(first_name: "John", last_name: "Smith")
owner3 = Owner.create(first_name: "Bill", last_name: "White")
owner1 = Owner.create(first_name: "Tom", last_name: "Hanks")


pet1 = Pet.create(name: "Waffles", kind: "cat",age: 11, owner: owner2)
pet2 = Pet.create(name: "Chloe", kind: "cat",age: 4, owner: owner2)
pet3 = Pet.create(name: "Harley", kind: "dog",age: 9, owner: owner3)
pet4 = Pet.create(name: "Ollie", kind: "dog",age: 1, owner: owner4)
pet5 = Pet.create(name: "Cookie", kind: "cat",age: 6, owner: owner1)


sitter1 = Sitter.create(name_of_company:"Walk a Dog")
sitter2 = Sitter.create(name_of_company:"Pet a Cat")
sitter3 = Sitter.create(name_of_company:"Doggie Days")
sitter4 = Sitter.create(name_of_company:"Feed a Cat")

appointment1 = Appointment.create(pet: pet1, sitter: sitter1)
