require 'pry'

class Owner
  attr_accessor :name, :pets 
  attr_reader :species
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => [] }
  end 
  
  def self.all 
    @@all 
  end 

  def self.count
    Owner.all.count
  end 

  def self.reset_all 
    @@all = []
  end 
    
  def species 
    @species = "human"
  end 
  
  def say_species 
    "I am a human."
  end 
  
  def buy_fish(fish_name)
    test_fish = Fish.new(fish_name)
    @pets[:fishes] << test_fish 
  end 
  
  def buy_cat(cat_name)
    test_cat = Cat.new(cat_name)
    @pets[:cats] << test_cat 
  end
  
  def buy_dog(dog_name)
    test_dogs = Dog.new(dog_name)
    @pets[:dogs] << test_dogs
  end
  
  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end 
  end 
  
  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end 
  end 
  
  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end 
  end 
  
  def sell_pets 
    
    @pets.each do |type, pets|  
      pets.each do |nervous| 
        nervous.mood = "nervous"
      end 
    end 
    
    @pets.collect do |type, pets|  
      pets.clear
    end
  end 
  
  def list_pets
    
    fish_cum = 0
    cat_cum = 0
    dog_cum = 0
    
    @pets.each do |type, pets|  
      pets.each do |x|
        if type == :fishes 
          fish_cum += 1
        elsif type == :cats
          cat_cum += 1
        elsif type == :dogs
          dog_cum += 1
        end 
      end 
    end
    
    
    "I have #{fish_cum} fish, #{dog_cum} dog(s), and #{cat_cum} cat(s)."

  end 
  
end

