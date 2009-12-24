require 'spec_helper'

describe Sorteio do
  before do
      @sorteio = Sorteio.new
  end
  
  it "deve realizar um sorteio de uma pessoa" do
    @sorteio.participantes = [Participante.new(:nome => "Schuma")]
    @sorteio.save
    @sorteio.sortear.nome.should == "Schuma"
  end
    
  it "deve realizar o sorteio do amigo secreto" do
     @sorteio.participantes << Participante.new(:nome => "Tiago")
     @sorteio.participantes << Participante.new(:nome => "Ricardo")
     @sorteio.participantes << Participante.new(:nome => "Arnaldo")
     @sorteio.participantes << Participante.new(:nome => "Lourdes")
     @sorteio.participantes << Participante.new(:nome => "Rodrigo")
     @sorteio.save
     @sorteio.amigo_secreto
     @sorteio.participantes.each do |participante|
       participante.amigo.should_not be_nil
     end
    
  end
 
  it "não deve sortear duas vezes o mesmo cara" do
    pending
     sorteio = Sorteio.new
     primeiro_sorteado = sorteio.sortear
     sorteio.sortear.should_not == primeiro_sorteado
  end
 
  it "nao deve sortear a si proprio" do
    pending
    sorteio = Sorteio.new
    sorteado = sorteio.sortear
    sorteio.sortear.should_not == sorteado
  end
  
end
