# frozen_string_literal: true

module Resolvers
  class Lists < AuthBase
    type Types::Connections::ListConnection, null: false

    def resolve
      match_operation ::List::Operation::Index.call
    end
  end
end
