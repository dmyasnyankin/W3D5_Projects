class AttrAccessorObject
  #define getter method, set var with @
  #iterate thru the name args and set the instance
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end

  #define setter method, set var with @symbol
  #set value for each instance
      define_method("#{name}=") do |val|
        instance_variable_set("@#{name}", val)
      end
    end
  end
end
