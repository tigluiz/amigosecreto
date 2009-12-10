require 'spec_helper'

describe "/participantes/new.html.erb" do
  include ParticipantesHelper

  before(:each) do
    assigns[:participante] = stub_model(Participante,
      :new_record? => true,
      :nome => "value for nome",
      :email => "value for email",
      :sorteio => 1
    )
  end

  it "renders new participante form" do
    render

    response.should have_tag("form[action=?][method=post]", participantes_path) do
      with_tag("input#participante_nome[name=?]", "participante[nome]")
      with_tag("input#participante_email[name=?]", "participante[email]")
      with_tag("input#participante_sorteio[name=?]", "participante[sorteio]")
    end
  end
end
