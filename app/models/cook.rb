class Cook < ApplicationRecord
    validates :name, presence:true
    validates :ingredient, presence:true
    validates :recipe, presence:true
    
    mount_uploader :image, ImageUploader #画像と紐付ける
    
end
