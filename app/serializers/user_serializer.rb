class UserSerializer < ActiveModel::Serializer
  attributes :id, :toggl_id, :toggl_api_key, :workspace_id, :name, :email
end
