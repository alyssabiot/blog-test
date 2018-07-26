Given("there are existing posts") do
  FactoryBot.create(:post,
                    :title => "This is a post",
                    :body => "This is a super smart content")
  FactoryBot.create(:post,
                    :title => "This is another post",
                    :body => "This is another super smart content")
end

Then("I should see the list of posts") do
  expect(page).to have_content("This is a post")
  expect(page).to have_content("This is another post")
end
