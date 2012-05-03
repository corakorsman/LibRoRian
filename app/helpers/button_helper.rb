module ButtonHelper
  def back_button
    link_to "Back", 'javascript:history.back();', :class => 'btn btn-small'
  end
end
