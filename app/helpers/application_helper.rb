module ApplicationHelper

  # page titles
  def title(page_title)
    content_for(:title) { page_title }
  end

  # display pick status of an exhibit
  def pick_display(e)
    case e.editor_rating
    when Exhibit::TOP_PICK
      '<h3 id="editor-rating" class="artcatred">TOP PICK</h3>'
    when Exhibit::PICK
      '<h3 id="editor-rating" class="artcatred">PICK</h3>'
    else
      ''
    end
  end

  # display inline pick status of an exhibit
  def inline_pick_display(e)
    case e.editor_rating
    when Exhibit::TOP_PICK
      '<strong id="editor-rating" class="artcatred">TOP PICK</strong>'
    when Exhibit::PICK
      '<strong id="editor-rating" class="artcatred">PICK</strong>'
    else
      ''
    end
  end

  def thumb_tag(exhibit)
    if exhibit.image_url
      link_to(image_tag(exhibit.image_url(:thumb)), exhibit)
    else
      image_tag('pixel.gif', width: '60px')
    end
  end

  # display exhibit link - either location site or specific exhibit site
  def exhibit_link(exhibit)
    location = exhibit.location
    if !exhibit.url.blank? || !location.url.blank?
      return link_to("Web Site", @exhibit.url.blank? ? location.url : @exhibit.url) + '<br />'.html_safe
    end
  end

end
