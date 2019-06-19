# your code goes here
def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element[0, 2] == "wa"}
end

def remove_non_strings(array)
  array.reject! {|element| !element.is_a?(String)}
end

def count_elements(array)
  count_array = []
  array.uniq.each do |element|
    if !count_array.include?(element)
      count_array << {:count=> array.count(element), :name=> element[:name]}
    end
  end
  count_array
end

def merge_data(keys, data)
  merged_data = []
  #keys.each do |key, 
  keys.each do |person|
    if keys[0][:first_name] == "blake"
      merged_data << keys[0].merge(data[0]["blake"])
    end
  end
  merged_data

end