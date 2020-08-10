class Carro
    attr_accessor :nome
    def ligar
        puts 'Carro ligado'
    end
end

civic = Carro.new
civic.nome = 'Civic'
civic.ligar
puts civic.nome
puts civic.class