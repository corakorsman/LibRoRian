Given /^there is a (.*) game called "([^\"]*)"$/ do |system, title|
  Game.create!(:title => title, :system => system)
end