require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  ####
  def say_species
    say = "I am a #{self.species}."
  end
  ####
  
  def buy_fish(name)
    name = Fish.new(name)
    pets[:fishes] << name
  end
  
  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
  end
  
  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy"}
  end
    
  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy"}
  end  
  
  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      value.clear
    end
  end
  
  def list_pets
    list = "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
end