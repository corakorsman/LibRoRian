class TagsController < ApplicationController
  def remove
    class_name = params[:object_class]
    library_object_class = class_name.constantize
    library_object = library_object_class.find(params[:id])

    @tag = Tag.find_by_name(params[:tag])

    library_object.tags.delete @tag

    respond_to do |format|
      format.js { render layout: false }
    end
  end
end
                          