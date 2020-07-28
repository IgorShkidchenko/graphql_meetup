# frozen_string_literal: true

module Types
  module Inputs
    class ListMovieInput < ::Types::Base::InputObject
      I18N_PATH = 'graphql.inputs.user.list_movie_input'

      graphql_name 'ListMovieInput'

      description I18n.t("#{I18N_PATH}.desc")

      argument :list_id,
               ID,
               required: true,
               description: I18n.t("#{I18N_PATH}.args.list_id")

      argument :movie_id,
               ID,
               required: true,
               description: I18n.t("#{I18N_PATH}.args.movie_id")
    end
  end
end


