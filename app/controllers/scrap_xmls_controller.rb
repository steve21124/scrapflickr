class ScrapXmlsController < ApplicationController
  # GET /scrap_xmls
  # GET /scrap_xmls.xml
  def index
    @scrap_xmls = ScrapXml.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scrap_xmls }
    end
  end

  # GET /scrap_xmls/1
  # GET /scrap_xmls/1.xml
  def show
    @scrap_xml = ScrapXml.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scrap_xml }
    end
  end

  # GET /scrap_xmls/new
  # GET /scrap_xmls/new.xml
  def new
    @scrap_xml = ScrapXml.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scrap_xml }
    end
  end

  # GET /scrap_xmls/1/edit
  def edit
    @scrap_xml = ScrapXml.find(params[:id])
  end

  # POST /scrap_xmls
  # POST /scrap_xmls.xml
  def create
    @scrap_xml = ScrapXml.new(params[:scrap_xml])

    respond_to do |format|
      if @scrap_xml.save
        flash[:notice] = 'ScrapXml was successfully created.'
        format.html { redirect_to(@scrap_xml) }
        format.xml  { render :xml => @scrap_xml, :status => :created, :location => @scrap_xml }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scrap_xml.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scrap_xmls/1
  # PUT /scrap_xmls/1.xml
  def update
    @scrap_xml = ScrapXml.find(params[:id])

    respond_to do |format|
      if @scrap_xml.update_attributes(params[:scrap_xml])
        flash[:notice] = 'ScrapXml was successfully updated.'
        format.html { redirect_to(@scrap_xml) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scrap_xml.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scrap_xmls/1
  # DELETE /scrap_xmls/1.xml
  def destroy
    @scrap_xml = ScrapXml.find(params[:id])
    @scrap_xml.destroy

    respond_to do |format|
      format.html { redirect_to(scrap_xmls_url) }
      format.xml  { head :ok }
    end
  end
end
