# frozen_string_literal: true

module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
  end
end
