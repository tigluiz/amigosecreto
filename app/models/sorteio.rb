class Sorteio < ActiveRecord::Base
  has_many :participantes
  def initialize
  @lista =  ["Tiago", "Ricardo"]
  end
  def sortear
   sorteado = @lista.rand
   @lista.delete(sorteado)
   sorteado
  end
end
