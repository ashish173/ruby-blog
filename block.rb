class Array
  # This method directly gets called from array object
  # Bang sign used to indicate we are overiding a method
  def iterate!
    # we interate on array with index
    self.each_with_index do |n, i|
      # yield is called to invoke the 
      # block of code supplied to the iterate method
      # block returns a value after operation
      # set the value to the array index we are 
      # iterating on
      self[i] = yield(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate! do |n|
  n ** 2
end

puts "Array has become #{array.inspect}"
