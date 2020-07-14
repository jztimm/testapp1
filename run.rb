require 'time'
require 'pry'
require_relative './user.rb'

def run
    puts "Welcome, please sign up"
    puts "What is your name?"
    $name = gets.chomp
    puts "\n"
    puts "What's your age?"
    $age = gets.chomp
    puts "\n"
    puts "Please enter your ssn."
    $ssn = gets.chomp
    user = User.new($name, $age, $ssn)

    sleep(1) #pauses the program for 1 seconds
    system("clear")
    sleep(2) #pauses the program for 2 seconds

    sleep(1)
    confirm_info
end


def is_right
    puts "Is this correct?"
    puts "Enter 1 for YES, 2 for NO"
    answer = gets.chomp
    confirmation(answer)
end

def confirm_info
    puts "\n"
    puts "Here is your profile:"
    puts "\n"
    puts "Your name is: #{$name}"
    puts "Your age is: #{$age}"
    puts "Your ssn is: xxx-xx-#{$ssn.slice(-4, 4)}"
    puts "\n"
    is_right
end


def confirmation(answer)
    if answer == '1'
       return 
    elsif answer == '2'
        puts "What would you like to change?"
        change_answer

    else
        puts "Sorry, that entry is invalid."
        is_right
    end
end

def change_answer
    puts "For name, enter 1"
    puts "For age, enter 2"
    changed_answer = gets.chomp

    if changed_answer == '1'
        puts "Please enter your name:"
        new_name = gets.chomp
        $name = new_name
    elsif changed_answer == '2'
        puts "Please enter your age:"
        new_age = gets.chomp
        $age = new_age
    end
    confirm_info
end

#binding.pry
run

