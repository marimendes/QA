describe 'Forms' do
    it 'login com sucesso'do
        visit "https://training-wheels-protocol.herokuapp.com/login"
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis'
        click_button 'Login'
        puts find('#flash').visible?
    end
end