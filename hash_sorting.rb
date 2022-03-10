players = [
    { :name => "Sam", :sport => "tennis" },
    { :name => "Mary", :sport => "squash" },
    { :name => "Ed", :sport => "tennis" },
    { :name => "Mark", :sport => "football" }
    ]
  
  sorted_by_sport = {}
  
  players.each do |player_under_consideration|
    
    sport = player_under_consideration[:sport]
    name = player_under_consideration[:name]
    
    if sorted_by_sport[sport] == nil
      sorted_by_sport[sport] = [name]
    else
      sorted_by_sport[sport].push(name)
    end
  end
  
  print sorted_by_sport