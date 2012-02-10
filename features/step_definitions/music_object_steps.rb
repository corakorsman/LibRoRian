Given /^there is a music object called "([^\"]*)"$/ do |title|
  MusicObject.create(:title => "Bigger Bang", :artist => "Rolling Stones")
  end