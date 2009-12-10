require 'spec_helper'

describe ParticipantesController do

  def mock_participante(stubs={})
    @mock_participante ||= mock_model(Participante, stubs)
  end

  describe "GET index" do
    it "assigns all participantes as @participantes" do
      Participante.stub!(:find).with(:all).and_return([mock_participante])
      get :index
      assigns[:participantes].should == [mock_participante]
    end
  end

  describe "GET show" do
    it "assigns the requested participante as @participante" do
      Participante.stub!(:find).with("37").and_return(mock_participante)
      get :show, :id => "37"
      assigns[:participante].should equal(mock_participante)
    end
  end

  describe "GET new" do
    it "assigns a new participante as @participante" do
      Participante.stub!(:new).and_return(mock_participante)
      get :new
      assigns[:participante].should equal(mock_participante)
    end
  end

  describe "GET edit" do
    it "assigns the requested participante as @participante" do
      Participante.stub!(:find).with("37").and_return(mock_participante)
      get :edit, :id => "37"
      assigns[:participante].should equal(mock_participante)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created participante as @participante" do
        Participante.stub!(:new).with({'these' => 'params'}).and_return(mock_participante(:save => true))
        post :create, :participante => {:these => 'params'}
        assigns[:participante].should equal(mock_participante)
      end

      it "redirects to the created participante" do
        Participante.stub!(:new).and_return(mock_participante(:save => true))
        post :create, :participante => {}
        response.should redirect_to(participante_url(mock_participante))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved participante as @participante" do
        Participante.stub!(:new).with({'these' => 'params'}).and_return(mock_participante(:save => false))
        post :create, :participante => {:these => 'params'}
        assigns[:participante].should equal(mock_participante)
      end

      it "re-renders the 'new' template" do
        Participante.stub!(:new).and_return(mock_participante(:save => false))
        post :create, :participante => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested participante" do
        Participante.should_receive(:find).with("37").and_return(mock_participante)
        mock_participante.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :participante => {:these => 'params'}
      end

      it "assigns the requested participante as @participante" do
        Participante.stub!(:find).and_return(mock_participante(:update_attributes => true))
        put :update, :id => "1"
        assigns[:participante].should equal(mock_participante)
      end

      it "redirects to the participante" do
        Participante.stub!(:find).and_return(mock_participante(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(participante_url(mock_participante))
      end
    end

    describe "with invalid params" do
      it "updates the requested participante" do
        Participante.should_receive(:find).with("37").and_return(mock_participante)
        mock_participante.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :participante => {:these => 'params'}
      end

      it "assigns the participante as @participante" do
        Participante.stub!(:find).and_return(mock_participante(:update_attributes => false))
        put :update, :id => "1"
        assigns[:participante].should equal(mock_participante)
      end

      it "re-renders the 'edit' template" do
        Participante.stub!(:find).and_return(mock_participante(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested participante" do
      Participante.should_receive(:find).with("37").and_return(mock_participante)
      mock_participante.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the participantes list" do
      Participante.stub!(:find).and_return(mock_participante(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(participantes_url)
    end
  end

end
