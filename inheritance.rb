class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def eat
    puts "Nom, nom, nom"
  end

  def to_s
    String(@name)
  end


end


class Dog < Animal
  def bark
    puts "rofl, rofl!"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "squireel!"
  end
end

animal = Animal.new("no_name")
dog = Dog.new("woofy")
bonsai = GoldenRetriever.new("bonsai")

puts bonsai.is_a?(Animal)
puts animal.name.is_a?(Object)

puts animal.name.to_s.is_a?(String)
