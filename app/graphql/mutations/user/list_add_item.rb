# frozen_string_literal: true

module Mutations
  module User
    class ListAddItem < AuthBaseMutation
      type Types::ListType

      description I18n.t('graphql.mutations.user.list_add_item.desc')

      argument :input, Types::Inputs::ListMovieInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::ListAddItem.call(params: input.to_h)
      end
    end
  end
end
