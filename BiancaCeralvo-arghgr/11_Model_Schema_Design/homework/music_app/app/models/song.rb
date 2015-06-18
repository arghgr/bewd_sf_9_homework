# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#

class Song < ActiveRecord::Base
  belongs_to :artist
end
