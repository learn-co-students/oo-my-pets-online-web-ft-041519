class Owner
  # code goes here
    attr_accessor :name, :pets
    attr_reader :species




    def initialize(species, name = nil)
      @species = "human"
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @name = name
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
      @pets.each do |type|
        type.each do |array|
          array.clear
        end
      end
    end

end
