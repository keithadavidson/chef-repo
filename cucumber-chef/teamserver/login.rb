Given /^a newly bootstrapped server$/ do
  create_server("teamserver", "192.168.20.20")
end

When /^the technical users recipe is applied$/ do
  set_run_list('teamserver', 'recipe[users::techies]')
  run_chef('teamserver')
end

Then /^a user should be able to ssh to the server$/ do
 private_key = Pathname(File.dirname(__FILE__)) + "../support/id_rsa-cucumber-chef"
 Given 'I have the following public keys:',
   table(%{
	 | keyfile        |
         | #{private_key} |
   })  Then ' Ican ssh to the following hosts with these credentials:',
     table(%{
       | hostname         | username      |
       | 192.168.20.20    | cucumber-chef |
   })
end

When /^the technical users recipe is appled$/ do
  pending # express the regexp above with the code you wish you had
end

When /^a user connects to the server bia ssh$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^their lofin shell should be "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^with a user's default shell changed to "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^the tehnical users recipe is applied$/ do
  pending # express the regexp above with the code you wish you had
end

When /^the user connects to the sever via ssh$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^their login shell should be "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

