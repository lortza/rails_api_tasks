class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :name

  has_many :tasks do
    data do
      @object.tasks
    end
  end

end
