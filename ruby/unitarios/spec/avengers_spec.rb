class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list  = []
    end
    
    def put(avenger)
        self.list.push(avenger)
    end
end

#TDD
describe AvengersHeadQuarter do
    it 'Deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new   
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it  'Deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        resultado = hq.list.size > 0
        expect(hq.list.size).to be > 0
        expect(resultado).to be true
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to start_with('Thor')
    end

    it 'Iroman deve ser o último da lista' do 
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Iroman')
        expect(hq.list).to end_with('Iroman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)
    end
end