# your code goes here
require 'pry'
class Person
    attr_reader :name 
    attr_accessor :happiness, :hygiene, :bank_account

    @@all = []

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self

    end

    def hygiene=(number)
        @hygiene = number.clamp(0,10)
    end
    def happiness=(number)
        @happiness = number.clamp(0,10)
    end

    def self.all
        @@all
    end

    def clean?
        @hygiene > 7 
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        return "all about the benjamins"
    end
    def take_bath
        total = @hygiene += 4
        self.hygiene=(total)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @happiness += 2
        @hygiene -= 3
        self.happiness=(@happiness)
        self.hygiene=(@hygiene)
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness=(friend.happiness += 3)
        self.happiness=(self.happiness += 3)

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person_to_talk_to, topic)
        case  topic
        when "politics"
            self.happiness -= 2
            person_to_talk_to.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person_to_talk_to.happiness += 1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        
        end

    end
end

adam = Person.new("Adam")
margie = Person.new("Margie")
binding.pry
0
