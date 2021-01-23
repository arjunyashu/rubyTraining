class HashesAndArrays
  def initialize
    @Students = []
  end
  def getStudentArray
    @Students.append({name:"Arjun",roll_no:1,marks:25})
    @Students.append({name:"Rajappa",roll_no:2,marks:30})
    @Students.append({name:"Men",roll_no:3,marks:56})
    @Students.append({name:"Women",roll_no:4,marks:34})
    @Students.append({name:"Test",roll_no:5,marks:54})
    @Students.append({name:"OK",roll_no:6,marks:66})
  end
  def getPassOrFails(name)
    @Students.each do |student|
      if student[:name] == name
        puts student[:name]
        case student[:marks]
        when 35..50
          puts "Pass"
        when 50..60
          puts "First Class"
        when 60..70
          puts "Distinction"
        when 0..35
          puts "Fail"
        end
      end
    end
  end
  def addPercentage
    @Students.each{|item| item[:percentage]=item[:marks]}
  end
  def retStudentsHash
    return @Students
  end
end

a = HashesAndArrays.new
a.getStudentArray
a.addPercentage
puts a.retStudentsHash
a.getPassOrFails("Men")

