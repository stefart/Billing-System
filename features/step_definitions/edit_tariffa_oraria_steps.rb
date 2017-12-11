Given("there is a Tariffa oraria") do
  @tariffa_orarium = FactoryBot.create(:tariffa_orarium)
end

Given("I am on the index of Tariffa oraria") do
  visit tariffa_oraria_path(@tariffa_orarium)
end

When("I change the Tariffa oraria to {string}") do |string| #string: 14
  fill_in 'tariffa_orarium_tariffa', with: string
end

Then("the Tariffa oraria is {string}") do |string| #string: 14
  expect(page).to have_content(string)
end
