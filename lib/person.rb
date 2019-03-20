# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(joy)
    joy = 10 if joy > 10
    joy = 0 if joy < 0
    @happiness = joy
  end
  
  def hygiene=(hygiene)
    hygiene = 10 if hygiene > 10
    hygiene = 0 if hygiene < 0
    @hygiene = hygiene
  end
  
  def happy?
    self.happiness > 7
  end
  
  def clean?
    self.hygiene > 7
  end
  
  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2 
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1 
      friend.happiness += 1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end