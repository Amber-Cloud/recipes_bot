# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :image,
    :imageType,
    :likes,
    :missedIngredientCount,
    :missedIngredients,
    :title,
    :unusedIngredients,
    :usedIngredientCount,
    :usedIngredients
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :image => String.t(),
          :imageType => String.t(),
          :likes => integer(),
          :missedIngredientCount => integer(),
          :missedIngredients => [
            RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.t()
          ],
          :title => String.t(),
          :unusedIngredients => [map()],
          :usedIngredientCount => float(),
          :usedIngredients => [
            RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.t()
          ]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInner do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :missedIngredients,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner,
      options
    )
    |> deserialize(
      :usedIngredients,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner,
      options
    )
  end
end
