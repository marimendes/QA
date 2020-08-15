describe 'Caixa de seleção', :dropdown do
    it 'item especifico simples' do
        visit "https://training-wheels-protocol.herokuapp.com/dropdown"
        select('Loki', from: 'dropdown')
    end
    it 'item especifico com o find' do
        visit "https://training-wheels-protocol.herokuapp.com/dropdown"
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
    end
    it 'item qualquer' do
        visit "https://training-wheels-protocol.herokuapp.com/dropdown"
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end