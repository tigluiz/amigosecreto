require 'spec_helper'

describe "/participantes/show.html.erb" do
  include ParticipantesHelper
  before(:each) do
    assigns[:participante] = @participante = stub_model(Participante,
      :nome => "value for nome",
      :email => "value for email",
      :sorteio => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/1/)
  end
end
