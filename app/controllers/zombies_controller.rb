class ZombiesController < ApplicationController
  # GET /zombies
  # GET /zombies.xml
  def index
    @zombies = Zombie.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zombies }
    end
  end

  # GET /zombies/1
  # GET /zombies/1.xml
  def show
    @zomby = Zombie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zomby }
    end
  end

  # GET /zombies/new
  # GET /zombies/new.xml
  def new
    @zomby = Zombie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zomby }
    end
  end

  # GET /zombies/1/edit
  def edit
    @zomby = Zombie.find(params[:id])
  end

  # POST /zombies
  # POST /zombies.xml
  def create
    @zomby = Zombie.new(params[:zomby])

    respond_to do |format|
      if @zomby.save
        format.html { redirect_to(@zomby, :notice => 'Zombie was successfully created.') }
        format.xml  { render :xml => @zomby, :status => :created, :location => @zomby }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zomby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zombies/1
  # PUT /zombies/1.xml
  def update
    @zomby = Zombie.find(params[:id])

    respond_to do |format|
      if @zomby.update_attributes(params[:zomby])
        format.html { redirect_to(@zomby, :notice => 'Zombie was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zomby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zombies/1
  # DELETE /zombies/1.xml
  def destroy
    @zomby = Zombie.find(params[:id])
    @zomby.destroy

    respond_to do |format|
      format.html { redirect_to(zombies_url) }
      format.xml  { head :ok }
    end
  end
end
