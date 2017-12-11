Given("there is a client called {string}") do |string|
 FactoryBot.create(:client, nome: string)
end

Given("I am on the page of the client called {string}") do |string|
 client = Client.find_by nome: string
 visit client_path(client)
end

When("I click on {string}") do |string|
   click_on string
end

When("I fill in the form with valid data") do
   fill_in 'bill_voce', with: 'Acconto'
   fill_in 'bill_ore_eff', with: 4

   click_on 'Inserisci Nuova Fattura'
end

Then("I should see the new bill in the list of the bills of the client") do
 bill = Bill.last
 expect(page).to have_content(bill.voce)
end

When("I fill the forms of {string} with a negative number") do |string|
   fill_in 'bill_voce', with: 'Acconto'
   fill_in 'bill_ore_eff' , with: '-4'

   click_on 'Inserisci Nuova Fattura'
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end

When("I do not fill in the forms of {string} any value") do |string| #voce
  fill_in 'bill_voce', with: '' #voce
   fill_in 'bill_ore_eff', with: -1

   click_on 'Inserisci Nuova Fattura'
end

Then("I should see an error for empty {string} field") do |string|
 expect(page).to have_content('Voce can\'t be blank')  #voce
end
