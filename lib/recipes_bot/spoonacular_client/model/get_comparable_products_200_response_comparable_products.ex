# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProducts do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :calories,
    :likes,
    :price,
    :protein,
    :spoonacularScore,
    :sugar
  ]

  @type t :: %__MODULE__{
          :calories => [map()],
          :likes => [map()],
          :price => [map()],
          :protein => [
            RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProductsProteinInner.t()
          ],
          :spoonacularScore => [
            RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProductsProteinInner.t()
          ],
          :sugar => [map()]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProducts do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :protein,
      :list,
      RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProductsProteinInner,
      options
    )
    |> deserialize(
      :spoonacularScore,
      :list,
      RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProductsProteinInner,
      options
    )
  end
end
