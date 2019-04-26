require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species, :dogs, :cats, :fishes
  
  @@all = []
  
  #Class methods
  
  def self.all
    #all returns all instances of Owner that have been created (FAILED - 16)
    @@all
  end 

  def self.count
    #count returns the number of owners that have been created (FAILED - 17)
    @@all.count
  end
    
  def self.reset_all
    #reset_all can reset the owners that have been created (FAILED - 18)
    @@all.clear
  end 
  
  #Instance methods
  
  def initialize(species)
    #is initialized with a pets attribute as a hash with 3 keys (FAILED - 23)
    #initializes with a species (FAILED - 19)
    @species = species
    @@all << self
    @pets = {}
    #binding.pry
    @pets[:dogs] = []
    @pets[:cats] = []
    @pets[:fishes] = []
    #binding.pry
  end 
  
  
  def say_species
    #can say its species (FAILED - 21)
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    #can buy a fish that is an instance of the Fish class (FAILED - 24)
    #knows about its fishes (FAILED - 25)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    #can buy a cat that is an instance of the Cat class (FAILED - 26)
    #knows about its cats (FAILED - 27)
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end
  
  def buy_dog(name)
    #can buy a dog that is an instance of the Dog class (FAILED - 28)
    #knows about its dogs (FAILED - 29)
    @dog = Dog.new(name) 
    @pets[:dogs] << @dog
    #binding.pry   
  end
  
  def walk_dogs
    #binding.pry
    #walks the dogs which makes the dogs' moods happy (FAILED - 30)
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    #plays with the cats which makes the cats moods happy (FAILED - 31)
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    #feeds the fishes which makes the fishes' moods happy (FAILED - 32)
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    #can sell all its pets, which make them nervous (FAILED - 33)
    @pets[:cats].collect do |cat|
      cat.mood = "nervous"
    end
    
    @pets[:dogs].collect do |dog|
      dog.mood = "nervous"
    end
    
    @pets[:fishes].collect do |fish|
      fish.mood = "nervous"
    end
    @pets.clear
  end
  
  def list_pets
    #binding.pry
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end