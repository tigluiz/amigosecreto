require 'spec_helper'

describe "/participantes/index.html.erb" do
  include ParticipantesHelper

  before(:each) do
    assigns[:participantes] = [
      stub_model(Participante,
        :nome => "value for nome",
        :email => "value for email",
        :sorteio => 1
      ),
      stub_model(Participante,
        :nome => "value for nome",
        :email => "value for email",
        :sorteio => 1
      )
    ]
  end

  it "renders a list of participantes" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", "value for email".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
