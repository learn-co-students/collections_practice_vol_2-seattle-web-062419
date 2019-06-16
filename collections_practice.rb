# your code goes here
def begins_with_r(array)
  array.all? { |element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find { |element| element[0, 2] == "wa"}
end

def remove_non_strings(array)
  array.reject! { |element| !element.is_a?(String)}
end