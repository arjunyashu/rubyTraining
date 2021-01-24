class Vehicle
  def initialize(no_of_tyres,no_seats)
    @no_of_tyres = no_of_tyres
    @no_seats = no_seats
  end
  def start
    puts "The vehicle has been started"
  end
  def get_spec
    puts "Number of tyres #{@no_of_tyres} Number of Seats #{@no_seats}"
  end
end

class Car < Vehicle
  def initialize(no_of_tyres, no_seats)
    super(no_of_tyres,no_seats)
  end
  def move
    start()
    puts "the Car has started moving"
    get_spec()
  end
end

class Bike < Vehicle
  def initialize(no_of_tyres, no_seats)
    super(no_of_tyres,no_seats)
  end
  def move
    start()
    puts "the Bike has started moving"
    get_spec()
  end

end

c = Car.new(4,5)
c.move

b = Bike.new(4,5)
b.move

