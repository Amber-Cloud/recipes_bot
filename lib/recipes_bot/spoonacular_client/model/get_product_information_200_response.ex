# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetProductInformation200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :title,
    :breadcrumbs,
    :imageType,
    :badges,
    :importantBadges,
    :ingredientCount,
    :generatedText,
    :ingredientList,
    :ingredients,
    :likes,
    :aisle,
    :nutrition,
    :price,
    :servings,
    :spoonacularScore
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :title => String.t(),
          :breadcrumbs => [String.t()],
          :imageType => String.t(),
          :badges => [String.t()],
          :importantBadges => [String.t()],
          :ingredientCount => integer(),
          :generatedText => AnyType | nil,
          :ingredientList => String.t(),
          :ingredients => [
            RecipesBot.SpoonacularClient.Model.GetProductInformation200ResponseIngredientsInner.t()
          ],
          :likes => float(),
          :aisle => String.t(),
          :nutrition =>
            RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition.t(),
          :price => float(),
          :servings =>
            RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseServings.t(),
          :spoonacularScore => float()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetProductInformation200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:generatedText, :struct, RecipesBot.SpoonacularClient.Model.AnyType, options)
    |> deserialize(
      :ingredients,
      :list,
      RecipesBot.SpoonacularClient.Model.GetProductInformation200ResponseIngredientsInner,
      options
    )
    |> deserialize(
      :nutrition,
      :struct,
      RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition,
      options
    )
    |> deserialize(
      :servings,
      :struct,
      RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseServings,
      options
    )
  end
end