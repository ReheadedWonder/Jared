class Car
  def initialize(color, brand)
    @color = color
    @brand = brand
    @position = 0
  end

  def drive
    @position += 100
  end

  def about
    puts "it's a #{@color} #{@brand}"
  end

  def where
    puts @position
    return @position
  end
end

class Person
  def initialize(car, name)
    @car = car
    @name = name
    @where = 'out'
  end

  def drive
    if in?
      @car.drive
    else
      puts "I can't. I'm not in the car"
    end
  end

  def about
    puts "#{@name} has a #{@car.about}"
  end

  def get_in
    @where = 'in'
  end

  def in?
    @where == 'in'
  end
end

class Ferrari < Car
  def drive
    @position += 1000
  end
end

car = Car.new 'red', 'Ferrari'

car.about
car.drive
car.drive

while car.where < 1000 do
  car.where
  car.drive
end

dude = Person.new car, 'Steve'

dude.about

dude.drive

dude.get_in

dude.drive

fer = Ferrari.new('red', 'truck')

fer.about
