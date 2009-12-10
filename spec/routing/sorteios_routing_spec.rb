require 'spec_helper'

describe SorteiosController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/sorteios" }.should route_to(:controller => "sorteios", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/sorteios/new" }.should route_to(:controller => "sorteios", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/sorteios/1" }.should route_to(:controller => "sorteios", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/sorteios/1/edit" }.should route_to(:controller => "sorteios", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/sorteios" }.should route_to(:controller => "sorteios", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/sorteios/1" }.should route_to(:controller => "sorteios", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/sorteios/1" }.should route_to(:controller => "sorteios", :action => "destroy", :id => "1") 
    end
  end
end
