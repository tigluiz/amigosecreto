class Sorteio < ActiveRecord::Base
  has_many :participantes
  
  def sortear
   lista = participantes.clone
   sorteado = lista.rand
   lista.delete(sorteado)
   sorteado
  end
  
  def amigo_secreto
    participantes.each do |participante|
      sorteado = sortear
      while participante.id == sorteado.id do
        sorteado = sortear 
      end
      participante.amigo = sorteado
      sorteado.presente  = participante.presente_amigo
    end
    participante.save
    sorteado.save
  end
end
