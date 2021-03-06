Given("I am on the index of clients") do
 visit clients_path(@clients)
end

Then("I should see all the data related to the client") do
    client = Client.last
    expect(page).to have_content(client.nome)
end

Then("I should see {string} on the client details") do |string|
     expect(page).to have_content(string)
end

When("I change the surname to {string}") do |string|
   fill_in 'client_cognome', with: string
end


And("I click on {string} on the alert box") do |string|
  #page.driver.browser.switch_to.alert.accept
end

Then("I should not see {string} on the client details") do |string|
  #expect(page).to have_no_content(string)
end
