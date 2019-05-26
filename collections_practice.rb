# your code goes here
require 'pry'
def begins_with_r(tools)
    tools.each do |word|
      if !word.start_with?("r")
        return false
      end   
    end
    return true
end

def contain_a(array)
    array.select do |word|
      word.include?("a")  
    end
end

def first_wa(array)
    string = ""
    array.each do |word|
      if word.to_s.start_with?("wa")
        return string << word 
      end
    end
end

def remove_non_strings(array)
    array.select do |word|
       word if  word == word.to_s
    end
end

def count_elements(array)
    new_hash = {}
    new_array = []
    array.each do |h| # {:name => "blake"}
        if !new_hash.key?(h[:name])
            new_hash[h[:name]] = 1
        else
            new_hash[h[:name]] += 1
        end
    end
    array.each do |h|
        new_array << {:name => h[:name], :count => new_hash[h[:name]]}
    end
    new_array.uniq
    
end
        
def merge_data(nest1,nest2)
    new_array = []
    nest1.each do |hash1|
        nest2.each do |hash2|
            hash2.each do |name, info|
              if hash1[:first_name] == name
                info.each do |key,value|
                    hash1[key] = value
                    new_array << hash1
                end
              end
            end
        end
    end
    new_array.uniq
end

def find_cool(array)
    new_array = []
    array.select do |hash|
        if hash.values.include?("cool")
            new_array << hash
        end
    end
    new_array
end

def organize_schools(school)
    new_hash = {}
    school.each do |name, location|
        location = location[:location]
        if !new_hash.keys.include?(location)
            new_hash[location]= []
            new_hash[location]<< name
        else 
            new_hash[location] << name
        end
    end
    new_hash
end