# frozen_string_literal: true

module Mutations
  module User
    class DeleteList < AuthBaseMutation
      type Types::DeleteItemType

      description I18n.t('graphql.mutations.user.list_add_item.desc')

      argument :input, Types::Inputs::DeleteInput, required: true

      def resolve(input:)
        match_operation ::List::Operation::Delete.call(params: input.to_h)
      end
    end
  end
end
