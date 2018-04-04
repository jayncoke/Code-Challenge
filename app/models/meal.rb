# == Schema Information
#
# Table name: meals
#
#  id            :integer          not null, primary key
#  name          :string
#  restaurant_id :uuid
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Meal < ApplicationRecord
end