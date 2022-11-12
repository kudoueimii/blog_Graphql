module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
    field :created_at, GraphQL::Types::IS08601DateTime, nill: false
    field :updated_at, GraphQL::Types::IS08601DateTime, nill: false
  end
end
