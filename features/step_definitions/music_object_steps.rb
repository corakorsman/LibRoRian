Given /^there is a CD called "([^\"]*)"(?: by "(.*))?"$/ do |title, artist|
  MusicObject.create!(:title => title, :artist => (artist || "Rolling Stones"), :medium => "CD")
end

Given /^there is a music DVD called "([^\"]*)"(?: by "(.*))?"$/ do |title, artist|
  MusicObject.create!(:title => title, :artist => (artist || "Rolling Stones"), :medium => "DVD")
end