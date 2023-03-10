# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetShoppingList200ResponseAislesInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :aisle,
    :items
  ]

  @type t :: %__MODULE__{
          :aisle => String.t(),
          :items =>
            [
              RecipesBot.SpoonacularClient.Model.GetShoppingList200ResponseAislesInnerItemsInner.t()
            ]
            | nil
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetShoppingList200ResponseAislesInner do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :items,
      :list,
      RecipesBot.SpoonacularClient.Model.GetShoppingList200ResponseAislesInnerItemsInner,
      options
    )
  end
end
