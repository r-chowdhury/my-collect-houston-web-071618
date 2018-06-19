def my_collect(arr)
  i = 0 
  first_names = []
  while i < arr.length 
    first_names.push(yield(arr[i])) 
    i+= 1 
  end 
  return first_names 
end
    
arr = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(arr) { |name| name.split(" ").first}