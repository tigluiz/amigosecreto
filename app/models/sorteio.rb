class Sorteio < ActiveRecord::Base
  has_many :participantes
  
  def sortear
   participantes.rand
  end
  
  def amigo_secreto
    participantes.each do |participante|
      lista = participantes.clone
      lista = retirar_da_lista_quem_me_sorteou(lista, participante) if numero_impar_de_participantes?
      sorteado = lista.rand
      lista.delete(sorteado)
      if participante.id == sorteado.id
        sorteado = lista.rand
      end
      participante.amigo = sorteado
      sorteado.presente  = participante.presente_amigo
      participante.save
      sorteado.save
    end
  end
  
  def retirar_da_lista_eu_e_quem_me_sorteou(lista, participante)
    lista.delete(participante)
    restantes = lista.clone
    lista.each do |amigo|
      if amigo.id == participante.id
        restantes.delete(amigo)
      end
    end
    restantes
  end
  
  private
    def numero_impar_de_participantes?
      participantes.size % 2 > 0
    end
end
