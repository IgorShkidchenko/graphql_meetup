# frozen_string_literal: true

module Types
  class DeleteItemType < Base::Object
    I18N_PATH = 'graphql.types.delete_item_type'

    graphql_name 'DeleteItemType'
    description I18n.t("#{I18N_PATH}.desc")

    field :deleted_item_id, ID, null: false, description: I18n.t("#{I18N_PATH}.fields.deleted_item_id")
  end
end
