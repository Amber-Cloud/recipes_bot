# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :nutrients,
    :caloricBreakdown
  ]

  @type t :: %__MODULE__{
          :nutrients => [
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner.t()
          ],
          :caloricBreakdown =>
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :nutrients,
      :list,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner,
      options
    )
    |> deserialize(
      :caloricBreakdown,
      :struct,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown,
      options
    )
  end
end