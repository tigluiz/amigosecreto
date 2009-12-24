class ParticipantesController < InheritedResources::Base
  belongs_to :sorteio
  respond_to :html, :js   
  
  def amigo_secreto
    @sorteio = Sorteio.find params["id"]
    @sorteio.amigo_secreto
    render :index
  end
end
