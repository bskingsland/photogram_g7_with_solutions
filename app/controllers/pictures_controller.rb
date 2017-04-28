class PicturesController < ApplicationController
  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    @new_photo=Photo.new
    @new_photo.source=params["the_source"]
    @new_photo.caption=params["the_caption"]
    @new_photo.save
    @photo_count=Photo.count
    render("pic_templates/create_row.html.erb")
  end

def show
  @my_photo = Photo.find(params["the_id"])
  render("pic_templates/show.html.erb")
end

def destroy_row
  render("pic_templates/destroy_row.html.erb")
end

def edit_form
  render("pic_templates/edit_form.html.erb")
end

def index
  @list_of_photos = Photo.all
  render("pic_templates/index.html.erb")
end

def update_row
  render("pic_templates/update_row.html.erb")
end

end
