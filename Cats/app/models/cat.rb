# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :text             not null
#

class Cat < ApplicationRecord
  ALL_COLORS = %w(black tabby beige white calico grey brown)
  validates :name, :sex, :birth_date, :description, presence: true
  validates :color, presence: true, inclusion: {in: ALL_COLORS}
  validates :sex, inclusion: {in: %w(M F)}

  def age
    Time.now.to_date.year - birth_date.year
  end
end
