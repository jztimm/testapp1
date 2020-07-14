require 'pry'

class User

    attr_writer :ssn
    attr_accessor :name
    attr_accessor :age
    def initialize(name, age, ssn)
        @name = name
        @age = age
        @ssn = ssn
    end
end

#vlad = User.new("jeff", 20)



