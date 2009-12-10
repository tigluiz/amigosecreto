require 'spec_helper'

describe Participante do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :email => "value for email",
      :sorteio_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Participante.create!(@valid_attributes)
  end
end
