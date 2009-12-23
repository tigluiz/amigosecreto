require 'spec_helper'

describe Sorteio do
 it "deve sortear um amigo secreto para um participante" do
  pending
 end
 
 it "não deve sortear duas vezes o mesmo cara" do
    sorteio = Sorteio.new
    primeiro_sorteado = sorteio.sortear
    sorteio.sortear.should_not == primeiro_sorteado
 end
 
 it "nao deve sortear a si proprio" do
   sorteio = Sorteio.new
   sorteado = sorteio.sortear
   sorteio.sortear.should_not == sorteado
 end
  
 it "nao deve ter o mesmo amigo secreto para mais de um participante" do
   pending
 end
end
