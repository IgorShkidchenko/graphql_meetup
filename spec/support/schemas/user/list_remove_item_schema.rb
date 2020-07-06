# frozen_string_literal: true

module User
  module ListRemoveItemSchema
    Success = Dry::Validation.Schema do
      input :hash?

      required(:data).schema do
        required(:userRemoveListItem).schema do
          required(:deletedItemId).filled(:str?)
        end
      end
    end
  end
end
