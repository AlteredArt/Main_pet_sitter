class Cli
    attr_reader :owner



def welcome
    puts "Welcome, Please enter your first name"
    user_first = gets.chomp
    puts "Please enter your last name"
    user_last = gets.chomp
    puts "Welcome, #{user_first} #{user_last}"
end
end
    #@owner = Owner.find_by(first_name: user_first)
    #=nil
    #if owner
    #create_pet
    #else
    # owner = Owner.create(user_first, user_last)
    #create pet
#     #end
# end
# end
# def full_name
#     "#{self.first_name} #{self.last_name}"
#   end  


# def create_new_owner(first_name, last_name)
#     Owner.create(first_name: "first_name", last_name: "last_name")
# end

# def create_new_pet(name, kind, age)
#     Pet.create(name: "name", kind: "kind", age: age)
# end

# def next_step
#     puts "Welcome, #{owner}, would you like set up a appointment for {pet}?"
#     puts "Enter, Yes or No"
#     user_answer == gets.chomp.downcase
#         if user_answer == "Yes"
#             create_new_appointmet
#         elsif user_answer == "No"
#             end_program
#     end
#     end
#     end

# def end_program
#     puts "Thaks for using our app, GoodBye."

# def prompt_owner
#     user_input = gets.chomp
# end

# def create_a_owner
#     Owner.create(first_name: "first_name", last_name: "last_name")
# end

# def create_a_pet
#     Pet.create(name: "name", kind: "kind", age: age)
# end

