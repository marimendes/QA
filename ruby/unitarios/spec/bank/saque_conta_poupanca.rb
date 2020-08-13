require_relative '../../app/bank'

describe ContaCorrente do
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(1000.00)
                @conta_poupanca.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta_poupanca.saldo).to eql 798.00
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(0.00)
                @conta_poupanca.saca(100.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_poupanca.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permance com o valor inicial' do
                expect(@conta_poupanca.saldo).to eql 0.00
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(100.00)
                @conta_poupanca.saca(101.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_poupanca.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permance com o valor inicial' do
                expect(@conta_poupanca.saldo).to eql 100.00
            end
        end

        context 'quando o valor do saque é maior que o limite por transação' do
            before(:all) do
                @conta_poupanca = ContaPoupanca.new(1000.00)
                @conta_poupanca.saca(501.00)
            end
            it 'então exibe a mensagem' do
                expect(@conta_poupanca.mensagem).to eql 'Limite maximo por saque eh R$ 500'
            end
            it 'e o saldo permance com o valor inicial' do
                expect(@conta_poupanca.saldo).to eql 1000.00
            end
        end
    end   
end