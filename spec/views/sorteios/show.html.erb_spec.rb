require 'spec_helper'

describe "/sorteios/show.html.erb" do
  include SorteiosHelper
  before(:each) do
    assigns[:sorteio] = @sorteio = stub_model(Sorteio)
  end

  it "renders attributes in <p>" do
    render
  end
end
