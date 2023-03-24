# Short code snippet to demonstrate some of the core features of creating classes in Ruby
class Greeter
    def initialize(name = "Empty")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}"
    end
    def say_bye
        puts "Goodbye #{@name}"
    end
end
