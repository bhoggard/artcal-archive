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
      image_tag(exhibit.image_url(:thumb))
    end
  end


end
