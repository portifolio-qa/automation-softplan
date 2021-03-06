describe "Cadastro" do
  it "login com sucesso" do
    visit "http://qa-rosedias-login_page.surge.sh/" 
    fill_in "username", with: "Teste"
    fill_in "password", with: "teste@gmail.com"
    click_button "Login"

    expect(find('#msg').visible?).to be true
    expect(find("#msg")).to have_content "Campos preenchidos com sucesso, login realizado. BEM VINDO!!"
    
   end  
    after(:each) do |e|
    nome =  e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    page.save_screenshot('log/' + nome + '.png')
    end

end

