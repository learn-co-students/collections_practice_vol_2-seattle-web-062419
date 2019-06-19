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
  count = 0
  keys.each do |person|
    if keys[count][:first_name] == data[0].keys[count]
      merged_data << keys[count].merge(data[0][keys[count][:first_name]])
    end
    count += 1
  end
  merged_data
end