require 'time'
require 'pry'
require_relative './user.rb'

def run
    puts "Welcome, please sign up"
    puts "What is your name?"
    name = gets.chomp
    puts "\n"
    puts "What's your age?"
    age = gets.chomp
    puts "\n"
    puts "Please enter your ssn."
    ssn = gets.chomp
    user = User.new(name, age, ssn)

    sleep(1) #pauses the program for 2 seconds

    puts "Here is your profile"
    puts "Your name is: #{name}"
    puts "Your age is: #{age}"
    puts "Your ssn is: xxx-xx-#{ssn.slice(-4, 4)}"

end

binding.pry
