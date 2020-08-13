class ContaCorrente
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > 700.00)
            self.mensagem = 'Limite maximo por saque eh R$ 700'
        else
            self.saldo -= valor
        end
    end
end