# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  position   :integer
#  content    :text
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Step < ActiveRecord::Base
  belongs_to :topic
  validates :position, :content, presence: true
  attr_accessible :content, :position

  default_scope order('position ASC')
end
