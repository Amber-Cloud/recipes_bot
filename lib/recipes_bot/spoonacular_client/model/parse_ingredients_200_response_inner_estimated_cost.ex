# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerEstimatedCost do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :value,
    :unit
  ]

  @type t :: %__MODULE__{
          :value => float(),
          :unit => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerEstimatedCost do
  def decode(value, _options) do
    value
  end
end
