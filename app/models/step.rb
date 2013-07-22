# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  order      :integer
#  content    :text
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Step < ActiveRecord::Base
  belongs_to :topic
  validates :order, :content, presence: true
  attr_accessible :content, :order 
end
