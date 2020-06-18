json.challenges @challenges.each do |challenge|
  json.title challenge.title 
  json.description challenge.description
  json.category challenge.category.title
  json.author challenge.author.username
end

