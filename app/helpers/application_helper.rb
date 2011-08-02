module ApplicationHelper
  
  # Return good title
  def title
    base_title = "Netheos"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
