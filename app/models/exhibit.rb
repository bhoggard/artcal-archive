class Exhibit < ActiveRecord::Base

  belongs_to :location

  # editor_rating constants
  LIST = 1
  FEATURED_OPENING = 2
  PICK = 3
  TOP_PICK = 4

  # display text version of editor rating value
  def display_rating
    @@rating_display_hash[editor_rating]
  end

  # display opening date - pass in true for time only
  def opening_datetime(time_only=false)
    dt = ''
    if time_only
      dt = "#{opening_start_time.strftime('%l:%M')} - #{opening_end_time.strftime('%l:%M %p')}"
    else
      dt = "#{opening_date.strftime('%A, %B %e')}, #{opening_start_time.strftime('%l:%M')} - #{opening_end_time.strftime('%l:%M %p')}"
    end
    dt.gsub!(/:00/, '')
    dt.gsub!(/^ /, '')
    dt.gsub(/  /, ' ')
  end

  # tag used for social media - flickr & blip.tv
  def social_tag
    if id > 8986
      "artcat#{id}"
    else
      "artcal-#{id}"
    end
  end

  def image_url(size = :original)
    return nil if image_file_name.blank?
    "http://calcdn.artcat.com/images/exhibits/#{id}_#{image_updated_at.to_i}.#{size}#{File.extname(image_file_name)}"
  end


end
