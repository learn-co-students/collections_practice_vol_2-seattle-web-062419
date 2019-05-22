# your code goes here
def begins_with_r(array)
  array.each do |element|
    if !element.downcase.start_with?('r')
      return false
    end
  end
  return true
end

def contain_a(array)
  result = []
  array.each do |element|
    if element.downcase.include?('a')
      result << element
    end
  end
  result
end

def first_wa(array)
  array.each do |element|
    if element.to_s.include?('wa')
      return element
    end
  end
end

def remove_non_strings(array)
  result = []
  array.length.times do |i|
    if array[i].to_s == array[i]
      result << array[i]
    end
  end
  result
end

# expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])

def count_elements(array)
  result = [array[0]]
  result[0][:count] = 0
  array.length.times do |i|
    result.each do |element|
      if element[:name] == array[i][:name]
        element[:count] += 1 
      else 
        result.push(array[i])
        result[result.index(array[i])][:count] = 0
      end
    end
  end
  result
end
# let(:keys) {
#     [{:first_name => "blake", :motto => "Have a koala-ty day!"},
#     {:first_name => "ashley", :motto => "I dub thee, 'Lady Brett Ashley'."}]
#   }

# let(:data) {
#     [{"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"},
#       "ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}}]
#   }

def merge_data(keys,data)
  merged_data = []
  
  data.each do |a|
    a.each do |k,v|
      keys.each do |b|
        if b[:first_name] == k 
          element = {}
          b.each do |x,y|
            element[x] = y
          end
          v.each do |p,q|
            element[p] = q 
          end
          merged_data << element
        end
      end
    end
  end
  merged_data
end
            

# let(:cool) {
#     [{:name => "ashley", :temperature => "sort of cool"},
#     {:name => "blake", :temperature => "cool"}]
#   }


def find_cool(array)
  array.each do |a|
    if a[:temperature] == "cool"
      return [a]
    end
  end
end

# let(:schools) {
#     {"flatiron school bk" => {:location => "NYC"},
#       "flatiron school" => {:location => "NYC"},
#       "dev boot camp" => {:location => "SF"},
#       "dev boot camp chicago" => {:location => "Chicago"},
#       "general assembly" => {:location => "NYC"},
#       "Hack Reactor" => {:location => "SF"}
#     }
#   }
#   let(:organized_schools) {
#     {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#   }

def organize_schools(schools)
  organize_schools = {}
  schools.each do |k,v|
    if !organize_schools[v[:location]]
      organize_schools[v[:location]] = [k]
    else
      organize_schools[v[:location]].push(k)
    end
  end
  organize_schools
end

