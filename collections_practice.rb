def begins_with_r(tools)
    tools.each do |word|
        if word[0] != "r"
            return false
        end
    end
    true
end

def contain_a(array)
    new_array = []
    array.each do |word|
        if word.include?("a")
            new_array<<word
        end
    end
    new_array
end

def first_wa(array)
    array.each do |word|
        if word[0..1] == "wa"
            return word
        end
    end
    nil
end

def remove_non_strings(array)
    new_array = []
    array.each do |word|
        if word.is_a?(String)
            new_array<<word
        end
    end
    new_array

end

def count_elements(array)
    new_array = []
    count_hash = {}
    array.each do |item|
        if count_hash[item] == nil
            
            count_hash[item] = 1
            new_array << item
        else
            
            current_count = count_hash[item]
            count_hash[item] = current_count + 1
        end
    end
    new_array.each do |item|
        item[:count] = count_hash[item]
    end
    new_array
end

def merge_data(s1,s2)
    s2[0].each do |name, info|
        
        s1.each do |info_hash|
            if info_hash.values.include?(name)
                #puts "#{name} is in #{info_hash.values}"
                info.each do |info_key, info_val|
                    info_hash[info_key] = info_val
                end
            end
        end
    end
    s1

end


def find_cool(input)
    array = []
    input.each do |hash|

        if hash.values.include?("cool")
            array << hash
        end
    end
    array
end

def organize_schools(input)
    new_hash = {}
    input.each do |school, info|
        
        if new_hash[info[:location]] == nil
            new_hash[info[:location]] = [school]
        else
            new_hash[info[:location]] << school
        end
    end
    new_hash
end