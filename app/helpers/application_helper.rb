module ApplicationHelper
  
  #Return language switch options
  def language_switch
    if request.host.split('.').last == "fr"
      link_to ("in english", "http://www.netheos.com#{request.env['PATH_INFO']}")
    else
      link_to ("en français", "http://www.netheos.fr#{request.env['PATH_INFO']}")
    end
  end
  
  # Return good title
  def title
    base_title = "Netheos"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  # Return true if header is require
  def header
    if @header.nil?
      true
    else
      @header
    end
  end

  # Return true if footer is require
  def footer
    if @footer.nil?
      true
    else
      @footer
    end
  end
  
# def highlight(path)
#   "highlight" if current_page?(path)
# end

end
