class House < ApplicationRecord
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations,allow_destroy: true, reject_if: :all_blank

  def reject_both_blank(attributes)
        if attributes[:id]
          attributes.merge!(_destroy: "1") if attributes[:route].blank? and attributes[:station].blank? and attributes[:time].blank?
          !attributes[:route].blank? and attributes[:station].blank? and attributes[:time].blank?
        else
          attributes[:route].blank? and attributes[:station].blank? and attributes[:time].blank?
        end
      end
end
