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

end
