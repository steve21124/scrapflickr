class HomeController < ApplicationController
  def index
    if params[:keyword_id]
      Keyword.update(params[:keyword_id], :status => "Done")
    end
    @keywords = Keyword.find(:all, :order => "status, keyword_name")
    @keywords = @keywords.paginate(:per_page => 100, :page => params[:page])
    ScrapPhoto.update_all("selected_photo = TRUE", {:id => params[:selected_photos]}) if params[:selected_photos]
    @scrap_photos = ScrapPhoto.find(:all, :conditions => {:selected_photo => TRUE})
#    params[:selected_photos].each do |scrap_photo_id|
#      @scrap_photos << ScrapPhoto.find_by_id(scrap_photo_id)
#    end if params[:selected_photos]
  end

  def photos
    @keyword = Keyword.find_or_create_by_keyword_name(params[:keyword_name])
    @keyword.update_attributes(:status => "Done")

    scrap_xml = ScrapXml.create(
      :keyword_id => @keyword.id,
      :xml_file => nil,
      :status => nil
    )

    flickr = Flickr.new(File.join(RAILS_ROOT, 'config', 'flickr.yml'))
    scrap_xml.update_attributes(:status => 1)

    photos = flickr.photos.search(
      :tags     => @keyword.keyword_name,
      :per_page => 6,
      :page     => 1,
      :license  => 4,
      :license  => 5,
      :license  => 6,
      :sort     => 'relevance',
      :woe_id   => '2487956'
    )
    scrap_xml.update_attributes(:status => 2)

#    ScrapXml.destroy_all
#    ScrapPhoto.destroy_all
    @photos = {}
    @scrap_photos = []

    photos.each do |photo|
      scrap_photo = ScrapPhoto.new(
        :keyword_id     => @keyword.id,
        :scrap_xml_id   => scrap_xml.id,
        :title          => photo.title,
        :url_square     => photo.url(:square),
        :url_thumbnail  => photo.url(:thumbnail),
        :url_small      => photo.url(:small),
        :url_medium     => photo.url(:medium),
        :url_large      => photo.url(:large),
        :url_original   => photo.url(:original),
        :tags           => photo.tags,
        :description    => photo.description,
        :author         => photo.owner_name,
        :license        => photo.license_id,
        :original_id    => photo.id,
        :status         => nil,
        :selected_photo => nil,
        :secret         => photo.secret,
        :server         => photo.server,
        :latitude       => nil,
        :longitude      => nil,
        :accuracy       => nil,
        :place_id       => nil,
        :woeid          => nil,
        :farm           => photo.farm,
        :is_family      => photo.is_family,
        :is_friend      => photo.is_friend,
        :is_public      => photo.is_public
      )
      if scrap_photo.save
        @scrap_photos << scrap_photo
        @photos[scrap_photo.id] = photo
      end
    end
  end
end
