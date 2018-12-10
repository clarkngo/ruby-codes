class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def eat
    puts "Nom, nom, nom"
  end
  
  def sleep
    puts "Need to sleep and recharge"
  end
end

class Worker < Person
  def work
    puts "I have a job 9-5 pm.. I LOVE my job.."
  end
end

class Developer < Worker
  def code
    puts "I can build an app for you! There's a bug.. Um.. a feature!"
  end
end

class FullStackDev < Developer
  def front_back
    puts "I'll develop a full application!"
  end
end

class FrontEndDev < Developer
  def front_end
    puts "Building.. User interface"
  end
end

class BackEndDev < Developer
  def back_end
    puts "Creating and Connecting to the database"
  end
end

lance_cho = FullStackDev.new("Lance Cho")
lance_cho.front_back
puts lance_cho.name