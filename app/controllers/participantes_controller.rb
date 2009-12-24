class ParticipantesController < InheritedResources::Base
  belongs_to :sorteio
  respond_to :html, :js   
end
