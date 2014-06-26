class Location < ActiveRecord::Base
  #location_type constants
  GALLERY = 1;
  MUSEUM = 2;
  NONPROFIT = 3;
  SCHOOL = 4;

  belongs_to :neighborhood
  has_many :exhibits, -> { order 'start_date ASC' }, :dependent => :destroy

  def display_address
    addr = "#{address_number} #{street_name}"
    addr += ", #{address_part2}" if !address_part2.blank?
    addr += ", #{telephone}" if !telephone.blank?
    addr
  end

end
