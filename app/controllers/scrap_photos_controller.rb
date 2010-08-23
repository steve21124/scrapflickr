class ScrapPhotosController < ApplicationController
  # GET /scrap_photos
  # GET /scrap_photos.xml
  def index
    @scrap_photos = ScrapPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scrap_photos }
    end
  end

  # GET /scrap_photos/1
  # GET /scrap_photos/1.xml
  def show
    @scrap_photo = ScrapPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scrap_photo }
    end
  end

  # GET /scrap_photos/new
  # GET /scrap_photos/new.xml
  def new
    @scrap_photo = ScrapPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scrap_photo }
    end
  end

  # GET /scrap_photos/1/edit
  def edit
    @scrap_photo = ScrapPhoto.find(params[:id])
  end

  # POST /scrap_photos
  # POST /scrap_photos.xml
  def create
    @scrap_photo = ScrapPhoto.new(params[:scrap_photo])

    respond_to do |format|
      if @scrap_photo.save
        flash[:notice] = 'ScrapPhoto was successfully created.'
        format.html { redirect_to(@scrap_photo) }
        format.xml  { render :xml => @scrap_photo, :status => :created, :location => @scrap_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scrap_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scrap_photos/1
  # PUT /scrap_photos/1.xml
  def update
    @scrap_photo = ScrapPhoto.find(params[:id])

    respond_to do |format|
      if @scrap_photo.update_attributes(params[:scrap_photo])
        flash[:notice] = 'ScrapPhoto was successfully updated.'
        format.html { redirect_to(@scrap_photo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scrap_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scrap_photos/1
  # DELETE /scrap_photos/1.xml
  def destroy
    @scrap_photo = ScrapPhoto.find(params[:id])
    @scrap_photo.destroy

    respond_to do |format|
      format.html { redirect_to(scrap_photos_url) }
      format.xml  { head :ok }
    end
  end
end
