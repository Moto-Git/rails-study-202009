class Task < ApplicationRecord
  # validates :name, presence: true, length: { maximum: 30 }
  # validates :name, leength: { maximum: 30 }
  
  # validate :validate_name_not_including_conma

  before_validation :set_nameless_name

  private

  #  def validate_name_not_including_conma
  #     errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
  #  end
  def set_nameless_name
    self.name = '名前無し' if name.blank? 
  end

end
