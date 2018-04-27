class SerializableTask < JSONAPI::Serializable::Resource
  type 'tasks'

  attributes :name, :complete, :priority, :user_id

  belongs_to :user

end
