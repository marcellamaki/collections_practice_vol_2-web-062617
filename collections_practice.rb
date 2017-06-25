def begins_with_r(array)
  condition = true
  array.each do |element|
    condition = false if element[0] != "r"
  end
  condition
end

def contain_a(words)
  new_array = []
  words.each do |word|
    if word.include?("a") == true
      new_array << word
end
end
  new_array
end

def first_wa(words)
  wa = nil
  words.each do |word|
    if word.match(/wa/)
      wa = word
break
  end
end
wa
end

def remove_non_strings(array)
new_array = []
array.each do |element|
  new_array << element if element.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
end
end
end
.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end



def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end
