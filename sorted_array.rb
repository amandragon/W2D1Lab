class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each{|e| add(e)}
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
    #sort it and maintain a sorted order.
  end

  def add(new_ele)
    @internal_arr.insert("#{new_ele}")
  end

  def size
    return internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)

   if @internal_arr.empty?
    return 0
  elsif start_ind>=end_ind
    return end_ind
  mid_index=(end_ind+start_ind)/2
  elsif target>@internal_arr[mid_index] #not sure if this one is correct
      return first_larger_index(target,mid_index+=1,end_ind)
  else
    return first_larger_index(target,start_ind,mid_index)
  end
end
   #find first element greater than the target
   #first_larger_index should find the index of the first element in the sorted array that's larger than the "target" passed into it
#defining recursive function--keep calling the function on itself


  def index(target)

    #return @source.sort.index
    #if @source.include?(target)
    #return @source.sort.index
  #else
   # return nil
  end
end