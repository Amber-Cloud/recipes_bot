# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :days
  ]

  @type t :: %__MODULE__{
          :days => [RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInner.t()]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :days,
      :list,
      RecipesBot.SpoonacularClient.Model.GetMealPlanWeek200ResponseDaysInner,
      options
    )
  end
end