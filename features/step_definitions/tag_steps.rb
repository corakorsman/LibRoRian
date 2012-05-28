Given /^the CD called "([^"]*)" has the tag[s]? "([^"]*)"$/ do |title, tag|
  MusicObject.find_by_title(title).tag!(tag)
end
