class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @pets
  end

  def buy_cat(name)
    Cat.new = name
    all_cats = @pets[:cats] = name
    all_cats
  end

  def buy_dog(name)
    Dog.new = name
    all_dogs = @pets[:dogs] = name
    all_dogs
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
    @pets = {}
  end

  def list_pets
    @pets.each do | p |
      puts "I have #{@pets[:fishes]}fish, #{@pets[:cats]}dog(s), and #{@pets[:cats]} cat(s)."
    end
  end

end
