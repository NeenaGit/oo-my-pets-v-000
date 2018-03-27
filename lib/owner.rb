class Owner
  attr_accessor :pets
  attr_reader :species

  def self.all
    @@all = [ ]
  end

  def reset_all
  end

  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def species(species)
    @species = species
  end

  def say_species
    puts "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    Fish.new = name
    all_fishes = @pets[:fishes] << name
    all_fishes
  end

  def buy_cat(name)
    Cat.new = name
    all_cats = @pets[:cats] << name
    all_cats
  end

  def buy_dog(name)
    Dog.new = name
    all_dogs = @pets[:dogs] << name
    all_dogs
  end

  def walk_dogs
    self.dog.mood = "happy"
  end

  def play_with_cats
    self.cat.mood = "happy"
  end

  def feed_fish
    self.fish.mood = "happy"
  end

  def sell_pets
    @pets = {}
  end

  def list_pets
    @pets.each do | p |
      puts "I have #{@pets[:fishes]}fish, #{@pets[:cats]}dog(s), and #{@pets[:cats]} cat(s)."
    end
  end

end
