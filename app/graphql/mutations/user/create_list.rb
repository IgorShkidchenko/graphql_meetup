# frozen_string_literal: true

module Mutations
  module User
    class CreateList < AuthBaseMutation
      type Types::UserAccountType

      description I18n.t('graphql.mutations.user.add_watchlist_movie.desc')

      argument :input, Types::Inputs::UserCreateListInput, required: true

      def resolve(input:)
        match_operation ::List::Operation::Create.call(
          current_user: current_user,
          params: input.to_h
        )
      end
    end
  end
end
