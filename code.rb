#YOUR CODE GOES HERE
require "erb"
# plan Ruby version
recipe = {
  name: "Roasted Brussel Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
    ],
  directions: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]
  }

=begin
  puts "#=================================#"
  puts "# Recipe: #{recipe[:name]}#"
  puts "#=================================#"
  puts " "
  puts "Ingredients"
  puts "----------"
  puts " "
  recipe[:ingredients].each do |ingredient|
    puts ingredient
  end
  puts " "
  puts "Directions"
  puts "----------"
  puts " "
  count = 0
  recipe[:directions].each do |direction|
    count += 1
    puts "#{count}. #{direction}"
  end

=end

  content = "
  #=================================#
  # Recipe: <%= recipe[:name] %>
  #=================================#

  Ingredients
  ----------
  <% recipe[:ingredients].each do |ingredient| %>
  <%= ingredient %>
  <% end %>


  # Directions
  # ----------
  # <% recipe[:directions].each do |direction| %>
  # <% count +=1 %>. <%= direction %>
  # <% end %>
  # "

  puts ERB.new(content).result
