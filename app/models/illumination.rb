# == Schema Information
#
# Table name: illuminations
#
#  id         :bigint           not null, primary key
#  illum      :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  devices_id :bigint           not null
#
# Indexes
#
#  index_illuminations_on_devices_id  (devices_id)
#
# Foreign Keys
#
#  fk_rails_...  (devices_id => devices.id)
#
class Illumination < ApplicationRecord
  belongs_to :device
end
