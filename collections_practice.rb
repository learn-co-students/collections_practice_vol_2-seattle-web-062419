# your code goes here
def begins_with_r(array)
  array.each do |element|
    if !element.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(array)
  elements_w_a = []
  array.each do |element|
    if element.include?("a")
      elements_w_a << element
    end
  end
  elements_w_a
end

def first_wa(array)
  array.each do |element|
    if element[0, 2] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  array.reject! { |element| !element.is_a?(String)}
end