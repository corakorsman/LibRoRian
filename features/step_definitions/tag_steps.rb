Given /^the CD called "([^"]*)" has the tag[s]? "([^"]*)"$/ do |title, tag|
  MusicObject.find_by_title(title).tag!(tag)
end

Given /^the DVD movie called "([^"]*)" has the tag[s]? "([^"]*)"$/ do |title, tag|
  Movie.find_by_title(title).tag!(tag)
end

Given /^the PS3 game called "([^"]*)" has the tag[s]? "([^"]*)"$/ do |title, tag|
  Game.find_by_title(title).tag!(tag)
end