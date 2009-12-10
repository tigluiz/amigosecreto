require 'spec_helper'

describe "/sorteios/edit.html.erb" do
  include SorteiosHelper

  before(:each) do
    assigns[:sorteio] = @sorteio = stub_model(Sorteio,
      :new_record? => false
    )
  end

  it "renders the edit sorteio form" do
    render

    response.should have_tag("form[action=#{sorteio_path(@sorteio)}][method=post]") do
    end
  end
end
