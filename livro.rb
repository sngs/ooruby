
class Livro
  attr_accessor :titulo, :preco, :ano_lancamento, :possui_reimpressao
  def initialize (titulo, preco, ano_lancamento, possui_reimpressao)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
    @possui_reimpressao = possui_reimpressao
  end
  
  def possui_reimpressao?
    @possui_reimpressao
  end
  
  def to_csv
      puts "Título: #{@titulo}, Ano: #{@ano_lancamento}, Preço: #{@preco}"    
  end
  
end

class Estoque
  attr_reader :livros
  def initialize
    @livros = []
  end
  
  def total
    @livros.count
  end
  
  def mais_baratos_que (valor)
    @livros.each do |i|
      puts "Título: #{i.titulo}" if i.preco < valor
    end
  end
  
  def << (livro)
    @livros << livro if livro!=[]
  end 
  
  def delete (livro)
    @livros_aux = []
    @livros.each do |i|
      @livros_aux << i if i!=livro 
    end
    @livros = @livros_aux
  end
    
  # def exporta_csv (livro)
  #   livro.to_csv
  # end
  
  def exporta_csv
     @livros.each do |livro|
      puts livro.to_csv
      end
  end    
    
end

# class Estoque
#   attr_reader :livro 
#   def initialize (livro)
#     @livro = livro
#   end
#   def total
#     @livro.to_a.count
#   end  
#   def mais_baratos_que (valor)
#   end
#     
# end

livro_1 = Livro.new("Teste", 10.00, 2008, true)
livro_2 = Livro.new("Teste2", 13.00, 2002, false)
livro_3 = Livro.new("Teste3", 10.00, 1997, false)
livro_4 = Livro.new("Teste4", 13.00, 1999, true)
agile = Livro.new("Agile Web Development with Rails", 70.00, 2011, true)
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70.00, 2011, true)
livro_5 = []
a = [livro_1, livro_2]
b = [livro_3, livro_4]
c = [livro_1, livro_2, livro_3, livro_4]

def imprime_livro (array)
    array.each do |i|
    puts i.titulo
  end
end

#estoque = Estoque.new(livro_1)

estoque = Estoque.new
#estoque.livro << livro_1 <<livro_2 <<livro_3
estoque << livro_1
estoque << livro_2
estoque << livro_3
estoque << livro_4
puts estoque.total
estoque.delete livro_2
puts estoque.total
estoque.delete livro_2
#estoque.adiciona(livro_3)
#estoque.adiciona(livro_4)
#estoque.adiciona(livro_5)
#estoque.adiciona()
puts estoque.total
#estoque.mais_baratos_que(13)
#livro_1.to_csv
#estoque.exporta_csv

# 
# def imprime_desconto (lista)
# puts "Newsletter"
# lista.each do |i|
#   if i.ano_lancamento < 2000
#     puts "Título: #{i.titulo}, Preço com desconto: #{i.preco * 0.7}"
#   end 
# end
# end
# 
# def imprime_reimpressos (lista)
#   lista.each do |i|
#       puts "#{i.titulo}" if i.possui_reimpressao?
#   end
# end
# 
# def calcula_preco (lista)
#   lista.each do |i|
#     i.preco = i.preco * 0.95 if i.ano_lancamento < 2006 && i.possui_reimpressao?
#     i.preco = i.preco * 0.90 if i.ano_lancamento < 2006 && !i.possui_reimpressao?
#     i.preco = i.preco * 0.96 if i.ano_lancamento > 2006 && i.ano_lancamento <= 2010 
#   end
# end
# 
# def exporta_csv (lista)
#   lista.each do |i|
#     puts "Título: #{i.titulo}, Ano: #{i.ano_lancamento}"
#   end
# end
#   
# #imprime_desconto (c)
# #imprime_reimpressos (c)
# calcula_preco (c)  
# exporta_csv (c)



