# frozen_string_literal: true

module Mutations
  module User
    class ListRemoveItem < AuthBaseMutation
      type Types::DeleteItemType

      description I18n.t('graphql.mutations.user.list_remove_item.desc')

      argument :input, Types::Inputs::ListMovieInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::ListRemoveItem.call(params: input.to_h)
      end
    end
  end
end
