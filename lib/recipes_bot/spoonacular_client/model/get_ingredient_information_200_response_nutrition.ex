# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetIngredientInformation200ResponseNutrition do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :nutrients,
    :properties,
    :caloricBreakdown,
    :weightPerServing
  ]

  @type t :: %__MODULE__{
          :nutrients => [
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner.t()
          ],
          :properties => [
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner.t()
          ],
          :caloricBreakdown =>
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown.t(),
          :weightPerServing =>
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionWeightPerServing.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetIngredientInformation200ResponseNutrition do
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
      :properties,
      :list,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner,
      options
    )
    |> deserialize(
      :caloricBreakdown,
      :struct,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown,
      options
    )
    |> deserialize(
      :weightPerServing,
      :struct,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionWeightPerServing,
      options
    )
  end
end