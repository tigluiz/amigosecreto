class SorteiosController < InheritedResources::Base
  def amigo_secreto
    @sorteio = Sorteio.find params["id"]
    @sorteio.amigo_secreto
    render :show
  end
end
