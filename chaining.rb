class Person

  def name(value)
    @name = value
    self
  end

  def age(value)
    @age = value
    self
  end

  def introduce
    puts "Hello, my name is #{@name}, and I am #{@age} years old.".gsub(/\b\w/, &:capitalize)    
  end


end

puts person = Person.new
puts person.name('Baz').inspect
puts person.name('Baz').age(21).inspect
puts person.name('Baz').age(21).introduce.inspect



