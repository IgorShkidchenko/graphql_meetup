# frozen_string_literal: true

module Mutations
  module User
    class AddFavoriteMovie < AuthBaseMutation
      type Types::MovieType

      description I18n.t('graphql.mutations.user.add_favorite_movie.desc')

      argument :input, Types::Inputs::UserMovieIdInput, required: true

      def resolve(input:)
        opts = { params: input.to_h.merge(user: current_user) }
        match_operation ::User::Operation::AddFavoriteMovie.call(opts)
      end
    end
  end
end
