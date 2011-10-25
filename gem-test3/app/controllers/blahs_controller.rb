class BlahsController < ApplicationController
  # GET /blahs
  # GET /blahs.xml
  def index
    @blahs = Blah.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blahs }
    end
  end

  # GET /blahs/1
  # GET /blahs/1.xml
  def show
    @blah = Blah.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blah }
    end
  end

  # GET /blahs/new
  # GET /blahs/new.xml
  def new
    @blah = Blah.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blah }
    end
  end

  # GET /blahs/1/edit
  def edit
    @blah = Blah.find(params[:id])
  end

  # POST /blahs
  # POST /blahs.xml
  def create
    params[:blah][:payload] = params[:blah][:payload].read
    @blah = Blah.new(params[:blah])

    respond_to do |format|
      if @blah.save
        format.html { redirect_to(@blah, :notice => 'Blah was successfully created.') }
        format.xml  { render :xml => @blah, :status => :created, :location => @blah }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blah.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blahs/1
  # PUT /blahs/1.xml
  def update
    @blah = Blah.find(params[:id])

    respond_to do |format|
      if @blah.update_attributes(params[:blah])
        format.html { redirect_to(@blah, :notice => 'Blah was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blah.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blahs/1
  # DELETE /blahs/1.xml
  def destroy
    @blah = Blah.find(params[:id])
    @blah.destroy

    respond_to do |format|
      format.html { redirect_to(blahs_url) }
      format.xml  { head :ok }
    end
  end
end
