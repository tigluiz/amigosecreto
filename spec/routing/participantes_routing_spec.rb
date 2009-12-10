require 'spec_helper'

describe ParticipantesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/participantes" }.should route_to(:controller => "participantes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/participantes/new" }.should route_to(:controller => "participantes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/participantes/1" }.should route_to(:controller => "participantes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/participantes/1/edit" }.should route_to(:controller => "participantes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/participantes" }.should route_to(:controller => "participantes", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/participantes/1" }.should route_to(:controller => "participantes", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/participantes/1" }.should route_to(:controller => "participantes", :action => "destroy", :id => "1") 
    end
  end
end
