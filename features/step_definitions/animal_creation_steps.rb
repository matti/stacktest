Given /^the following animal_creations:$/ do |animal_creations|
  AnimalCreation.create!(animal_creations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) animal_creation$/ do |pos|
  visit animal_creations_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following animal_creations:$/ do |expected_animal_creations_table|
  expected_animal_creations_table.diff!(table_at('table').to_a)
end
