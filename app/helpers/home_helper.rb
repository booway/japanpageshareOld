module HomeHelper
  def title
    base_title = "ShareBeta"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
