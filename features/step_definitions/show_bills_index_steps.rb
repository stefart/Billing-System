Given("this client has a bill") do
  FactoryBot.create(:bill, client: Client.last)
end

Then("i should see the index of bills related to the client") do
  client = Client.find_by nome: "Mario Rossi"
  visit client_bills_path(client)
end
