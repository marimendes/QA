describe 'Drag and drop', :drop do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'homem aranha pertence ao time do stark' do
        stark = find('.team-stark .column')
        homem_aranha = find('img[alt$=Aranha]')
        homem_aranha.drag_to stark
        expect(stark).to have_css 'img[alt$=Aranha]'
    end
end