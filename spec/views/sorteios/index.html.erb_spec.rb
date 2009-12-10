require 'spec_helper'

describe "/sorteios/index.html.erb" do
  include SorteiosHelper

  before(:each) do
    assigns[:sorteios] = [
      stub_model(Sorteio),
      stub_model(Sorteio)
    ]
  end

  it "renders a list of sorteios" do
    render
  end
end
