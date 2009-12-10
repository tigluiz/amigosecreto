require 'spec_helper'

describe "/sorteios/new.html.erb" do
  include SorteiosHelper

  before(:each) do
    assigns[:sorteio] = stub_model(Sorteio,
      :new_record? => true
    )
  end

  it "renders new sorteio form" do
    render

    response.should have_tag("form[action=?][method=post]", sorteios_path) do
    end
  end
end
