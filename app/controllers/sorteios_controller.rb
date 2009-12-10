class SorteiosController < ApplicationController
  # GET /sorteios
  # GET /sorteios.xml
  def index
    @sorteios = Sorteio.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sorteios }
    end
  end

  # GET /sorteios/1
  # GET /sorteios/1.xml
  def show
    @sorteio = Sorteio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sorteio }
    end
  end

  # GET /sorteios/new
  # GET /sorteios/new.xml
  def new
    @sorteio = Sorteio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sorteio }
    end
  end

  # GET /sorteios/1/edit
  def edit
    @sorteio = Sorteio.find(params[:id])
  end

  # POST /sorteios
  # POST /sorteios.xml
  def create
    @sorteio = Sorteio.new(params[:sorteio])

    respond_to do |format|
      if @sorteio.save
        flash[:notice] = 'Sorteio was successfully created.'
        format.html { redirect_to(@sorteio) }
        format.xml  { render :xml => @sorteio, :status => :created, :location => @sorteio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sorteio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sorteios/1
  # PUT /sorteios/1.xml
  def update
    @sorteio = Sorteio.find(params[:id])

    respond_to do |format|
      if @sorteio.update_attributes(params[:sorteio])
        flash[:notice] = 'Sorteio was successfully updated.'
        format.html { redirect_to(@sorteio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sorteio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sorteios/1
  # DELETE /sorteios/1.xml
  def destroy
    @sorteio = Sorteio.find(params[:id])
    @sorteio.destroy

    respond_to do |format|
      format.html { redirect_to(sorteios_url) }
      format.xml  { head :ok }
    end
  end
end
