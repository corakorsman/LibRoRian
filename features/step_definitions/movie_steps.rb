  Given /^there is a movie called "([^\"]*)"$/ do |title|
    Movie.create(:title => "Watchmen", :medium => "DVD")
  end