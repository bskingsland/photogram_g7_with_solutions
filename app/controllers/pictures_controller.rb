class PicturesController < ApplicationController

def home
@list_of_photos = Photo.order({:created_at => :desc})
render("pic_templates/index.html.erb")
end


  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    @new_photo=Photo.new
    @new_photo.source=params["the_source"]
    @new_photo.caption=params["the_caption"]
    @new_photo.save
    @photo_count=Photo.count
    redirect_to("/photos")
  end

def show
  @my_photo = Photo.find(params["the_id"])
  render("pic_templates/show.html.erb")
end

def destroy_row
  my_photo = Photo.find(params["da_id"])
  my_photo.destroy
  redirect_to("/photos")
end

def edit_form
  @my_photo = Photo.find(params["la_id"])
  render("pic_templates/edit_form.html.erb")
end

def index
  @list_of_photos = Photo.all
  render("pic_templates/index.html.erb")
end

def update_row
  @photo=Photo.find(params["le_id"])
  @photo.source=params["the_source"]
  @photo.caption=params["the_caption"]
  @photo.save
  redirect_to("/photos/#{@photo.id}")
end

end
