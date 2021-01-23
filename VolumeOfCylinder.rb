$pi = 3.14
class VolumeOfCylinder

  def volume(radius,height)
    return $pi*radius*radius*height
  end
end

cyl = VolumeOfCylinder.new
puts cyl.volume(10,20)
