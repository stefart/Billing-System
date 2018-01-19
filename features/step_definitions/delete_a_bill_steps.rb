Given("there is a bill under {string} called {string}") do |nome,voce|
  client = Client.last
  FactoryBot.create(:bill, voce: voce, client: client)
end

And("I should see the bill {string} in the list of the bills of the client") do |string|
   expect(page).to have_content(string)
end

Then("I should see {string}") do |string|
   expect(page).to have_content(string)
end
