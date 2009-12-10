require 'spec_helper'

describe "/participantes/edit.html.erb" do
  include ParticipantesHelper

  before(:each) do
    assigns[:participante] = @participante = stub_model(Participante,
      :new_record? => false,
      :nome => "value for nome",
      :email => "value for email",
      :sorteio => 1
    )
  end

  it "renders the edit participante form" do
    render

    response.should have_tag("form[action=#{participante_path(@participante)}][method=post]") do
      with_tag('input#participante_nome[name=?]', "participante[nome]")
      with_tag('input#participante_email[name=?]', "participante[email]")
      with_tag('input#participante_sorteio[name=?]', "participante[sorteio]")
    end
  end
end
