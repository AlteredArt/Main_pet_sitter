class Cli
    attr_reader :owner



def welcome
    puts "Welcome, Please enter your first name"
        user_first= gets.chomp
    puts "Please enter your last name"
        user_last= gets.chomp
    puts "Welcome, full_name()"
        owner = Owner.find_by(full_name)
    end
end

# def create_a_owner
# if owner
# create_new_pet
# else
# owner = Owner.create(user_first, user_last)
# create_new_pet
# end

def full_name
    "#{user_first} #{user_last}"
  end  

#   def create_new_pet(name, kind, age)
#       Pet.create(name: "name", kind: "kind", age: age)
#   end
# def create_new_owner(first_name, last_name)
#     Owner.create(first_name: "first_name", last_name: "last_name")
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

