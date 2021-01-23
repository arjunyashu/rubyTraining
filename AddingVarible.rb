$global_var = 1
class AddingVariable
  CONST = 10
  @@class_var = 20
  @instance_varible = 100

  def add(local_var)
    @instance_varible = 200
    return CONST+@@class_var+$global_var+local_var+@instance_varible
  end
end

adder = AddingVariable.new
puts adder.add(40)