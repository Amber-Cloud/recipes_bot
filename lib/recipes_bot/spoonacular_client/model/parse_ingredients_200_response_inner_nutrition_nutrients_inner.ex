# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :amount,
    :unit,
    :percentOfDailyNeeds
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :amount => float(),
          :unit => String.t(),
          :percentOfDailyNeeds => float()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner do
  def decode(value, _options) do
    value
  end
end
