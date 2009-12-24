class Sorteio < ActiveRecord::Base
  has_many :participantes
  
  def sortear
   lista = participantes.clone
   sorteado = lista.rand
   lista.delete(sorteado)
   sorteado
  end
  
  def amigo_secreto
  end
end
