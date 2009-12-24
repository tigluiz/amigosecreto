class Participante < ActiveRecord::Base
  belongs_to :sorteio
  has_one :amigo, :class_name => "Participante"
end
