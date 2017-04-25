Dado(/^que esteja na home do site OrangeHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^houver contratacao de novos funcionarios$/) do
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button("btnLogin")
  find(:id,"menu_pim_viewPimModule").click
  find(:id,"menu_pim_addEmployee").click
  fill_in "firstName", :with => "Joao"
  fill_in "lastName", :with => "Testador"
  check("chkLogin")
  fill_in "user_name", :with => "joao.testador123"
  fill_in "user_password", :with => "senhadotestador1"
  fill_in "re_password", :with => "senhadotestador1"  
end

Entao(/^fara o cadastro do funcionario$/) do
  click_button("btnSave") 	
end