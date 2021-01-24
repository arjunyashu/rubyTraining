class Polygon
  @area = 0
  def initialize(w,h = 0)
    @width,@height = w,h
  end
  def area
    @area = @width*@height
  end
end

class Square < Polygon
  def initialize(w)
    super(w)
    Square.properties()
  end
  def area
    @area = @width*@width
    puts "Area of the Square is #{@area}"
  end
  def self.properties
    puts "This is a Square and it has equal 4 equal Sides. And the side measures #{@width}"
  end
end
class Rectangle < Polygon
  def initialize(w, h)
    super(w,h)
    Rectangle.properties()
  end
  def area
    super
    puts "Area of the Rectange is #{@area}"
  end
  def self.properties
    puts "This is a Rectangle and it has 2 opposite sides equal. And the two Sides are Height = #{@height} Width = #{@width}"
  end
end
class Triangle < Polygon
  def initialize(w, h)
    super(w,h)
    properties()
  end
  def area
    @area = (@width*@height)/2
    puts "Area of the Triangle is #{@area}"
  end
  def properties
    puts "This is a triangle and it has 3 sides and the base = #{@width} and height =  #{@height}"
  end
end

t = Triangle.new(10,20)
t.area

s = Square.new(10)
s.area
r = Rectangle.new(10,20)
r.area
