describe 'Upload', :upload do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/boo.jpg'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
        div_arquivo = find('#uploaded_file')
        expect('div_arquivo.text').to eql 'arquivo.txt'
    end

    it 'upload de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        img = find('#new-file')
        expect(img[:src]).to include 'boo.jpg'
    end

    after(:each) do
        sleep 3
    end
end 

