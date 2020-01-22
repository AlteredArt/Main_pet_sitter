def prompt_owner
    user_input = gets.chomp
end

def answer?
    prompt_owner
    owner_input = prompt_owner
    if owner_input == "yes"
      puts "would you like to create a appointment?"
    elsif owner_input = "no"
      puts "would you like to create a new owner"
    else
      puts invalid_command
    end
  end
end



def the_end
    puts "thanks for using our app"
end


