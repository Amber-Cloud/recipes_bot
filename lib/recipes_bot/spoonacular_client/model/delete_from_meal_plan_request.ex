# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.DeleteFromMealPlanRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :username,
    :id,
    :hash
  ]

  @type t :: %__MODULE__{
          :username => String.t(),
          :id => float(),
          :hash => String.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.DeleteFromMealPlanRequest do
  def decode(value, _options) do
    value
  end
end
