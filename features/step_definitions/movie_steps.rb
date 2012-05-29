Given /^there is a (.*) movie called "([^\"]*)"$/ do |medium, title|
  Movie.create!(:title => title, :medium => medium)
end