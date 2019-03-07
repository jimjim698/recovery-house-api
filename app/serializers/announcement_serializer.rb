class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes, :dislikes, :user_id
end
