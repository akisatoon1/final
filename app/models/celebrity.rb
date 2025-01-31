class Celebrity < ApplicationRecord
    validates :name, :image_url, presence: true
    validates :known_cnt, :unknown_cnt, numericality: { only_integer: true }

    before_update :prevent_name_image_update

    def increment_known
        increment!(:known_cnt)
    end

    def increment_unknown
        increment!(:unknown_cnt)
    end

    private
    def prevent_name_image_update
        if name_changed? || image_url_changed?
            errors.add(:base, "name and image_url cannot be updated")
            throw :abort
        end
    end
end
