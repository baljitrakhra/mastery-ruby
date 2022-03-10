# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]
sorted_by_sport = {}
sorted_by_fruit = {}
puts "Enter what category to search"
category = gets.chomp
people.each do |x|
  if category == "sport"
    sport = x["sport"]
    name = x["name"]
    if sorted_by_sport[sport] == nil
      sorted_by_sport[sport] = [name]
    else
      sorted_by_sport[sport].push(name)
    end
  else
    fruit = x["fruit"]
    name = x["name"]
    if sorted_by_fruit[fruit] == nil
      sorted_by_fruit[fruit] = [name]
    else
      sorted_by_fruit[fruit].push(name)
    end
  end
end
if category == "sport"
  sorted_by_sport.each do |sport, name|
    puts sport, name
  end
else
  sorted_by_fruit.each do |fruit, name|
    puts fruit, name
  end
end

