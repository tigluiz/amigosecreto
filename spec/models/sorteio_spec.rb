require 'spec_helper'

describe Sorteio do
  before do
      @sorteio = Sorteio.new
  end
  
  context "fazer um unico sorteio " do
    it "deve realizar um sorteio de uma pessoa" do
      @sorteio.participantes = [Participante.new(:nome => "Schuma")]
      @sorteio.save
      @sorteio.sortear.nome.should == "Schuma"
    end
  end
  
  context "sortear amigo secreto" do 
    before do
      @sorteio.participantes << Participante.new(:nome => "Tiago")
      @sorteio.participantes << Participante.new(:nome => "Ricardo")
      @sorteio.participantes << Participante.new(:nome => "Arnaldo")
      @sorteio.participantes << Participante.new(:nome => "Lourdes")
      @sorteio.participantes << Participante.new(:nome => "Rodrigo")
      @sorteio.save
      @sorteio.amigo_secreto      
    end
    
    it "deve realizar o sorteio do amigo secreto" do
       @sorteio.participantes.each do |participante|
         participante.amigo.should_not be_nil
       end    
    end
 
    it "não deve sortear duas vezes o mesmo cara" do
      @sorteio.participantes.should == @sorteio.participantes.uniq
    end
 
    it "nao deve sortear a si proprio" do
      @sorteio.participantes.each do |participante| 
        participante.id.should_not == participante.amigo.id 
      end
    end
    context "xxxx" do
      before do
        @sorteio.participantes << Participante.new(:nome => "Tiago")
        @sorteio.participantes << Participante.new(:nome => "Ricardo")        
      end
      it "nao deve ser sorteado por quem sorteou" do
        @sorteio.participantes[1].should be_nil 
      end
    end
  end
end
