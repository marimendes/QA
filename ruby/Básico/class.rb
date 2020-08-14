class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais de #{self.nome}"
    end
end

c = Conta.new('Mari')
c.deposita (100.00)

c.deposita (10.00)
puts c.saldo
