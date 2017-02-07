def sort_array_asc(array)
  new_array = array.sort
end

def sort_array_desc(array)
  reverse_array = array.sort {|x,y| y <=> x }
end

def sort_array_char_count(array)
  array_by_length = array.sort { |x,y| x.length <=> y.length }
end

def swap_elements(array)
  first_element = array[1]
  second_element = array[2]

  array[1] = second_element
  array[2] = first_element

  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |string|
    string[2] = "$"
    kesha_array << string
  end
  kesha_array
end

def find_a(array)
  array.find_all do |string|
    string.start_with?("a")
  end
end

def sum_array(array)
  array.inject do |sum, num|
    sum + num
  end
end

def add_s(array)
  array.each_with_index.collect do |string, index|
    if index != 1
      string + "s"
    else
      string
    end
  end
end
