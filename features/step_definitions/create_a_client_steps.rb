Given("I am on the index of Clients") do
  visit clients_path(@clients)
end


When("I fill in the form with valid client data") do
   fill_in 'client_nome', with: 'Stefano'
   fill_in 'client_cognome', with: 'Artuso'
   fill_in 'client_indirizzo', with: 'Via Roma, 18'
   fill_in 'client_telefono', with: '0425612338'

end

Then("I should see the new client in the table") do
 client = Client.last
 expect(page).to have_content(client.nome)
end


Given("I am on the page of creating a new client") do
     visit new_client_path(@clients)
end

When("I fill in the form with a phone number shorter than {int}") do |int|
   fill_in 'client_nome', with: 'Stefano'
   fill_in 'client_cognome', with: 'Artuso'
   fill_in 'client_indirizzo', with: 'Via Roma, 18'
   fill_in 'client_telefono', with: '0425618'
end

When("I fill in the form with a phone number longer than {int}") do |int|
  fill_in 'client_nome', with: 'Stefano'
   fill_in 'client_cognome', with: 'Artuso'
   fill_in 'client_indirizzo', with: 'Via Roma, 18'
   fill_in 'client_telefono', with: '0425618888888'
end

When("I dont fill the forms of {string} or {string}") do |string, string2|
  fill_in 'client_nome', with: nil
   fill_in 'client_cognome', with: nil
   fill_in 'client_indirizzo', with: 'Via Roma, 18'
   fill_in 'client_telefono', with: '0425618888888'
end
