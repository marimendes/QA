describe 'Select2', :select2 do
    
    describe ('single') do
        before(:each) do
           visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
        end
    end

    describe ('multiple') do
        before(:each) do
           visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end
    end
end