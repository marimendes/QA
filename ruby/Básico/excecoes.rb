# begin
#     file = File.open('ola.txt')
#     if file
#         puts file.read
#     end
# rescue => exception 
#     puts exception
# end

def soma(n1, n2)
    n1 + n2
rescue => exception 
    puts exception.message
    puts 'Erro ao executar a soma'
end

soma('10', 5)