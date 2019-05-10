require 'pry'
class Owner
  # code goes here
    attr_accessor :name, :pets
    attr_reader :species

    @@all = []

    def initialize(species, name = nil)
      @species = "human"
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @name = name
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

    def say_species
      "I am a human."
    end

    def buy_fish(name)
      fish = Fish.new(name)
      @pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      @pets[:cats] << cat
    end

    def buy_dog(name)
      dog = Dog.new(name)
      @pets[:dogs] << dog
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets

      @pets.each do |type, animal|
        animal.each do |pet|
          pet.mood = "nervous"
        end
        animal.clear
      end
    end

    def list_pets
      cats = 0
      dogs = 0
      fish = 0
      @pets.each do |species, animal|
        if species == :fishes
          animal.each do |pet|
            fish += 1
          end
        elsif species == :dogs
          animal.each do |pet|
            dogs += 1
          end
        elsif species == :cats
          animal.each do |pet|
            cats += 1
          end
        end
      end
      "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
    end

end
