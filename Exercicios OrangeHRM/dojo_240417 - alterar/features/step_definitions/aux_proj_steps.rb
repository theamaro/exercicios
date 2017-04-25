Dado(/^que esteja na home do site OrangeHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^houver alteracao de dados cadastrais de funcionarios$/) do
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button("btnLogin")
  find(:id,"menu_pim_viewPimModule").click
  find(:id,"menu_pim_viewEmployeeList").click
  find(:xpath,'//*[@id="resultTable"]/tbody/tr[1]/td[3]/a').click
  click_button("btnSave")
  fill_in "personal_txtEmpLastName", :with => "Olveira Santos"
end

Entao(/^fara a alteracao do funcionario no site$/) do
  click_button("btnSave") 
end