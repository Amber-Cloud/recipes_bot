# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :nutrients
  ]

  @type t :: %__MODULE__{
          :nutrients => [
            RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.t()
          ]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :nutrients,
      :list,
      RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner,
      options
    )
  end
end