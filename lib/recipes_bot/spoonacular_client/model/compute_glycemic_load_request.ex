# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ComputeGlycemicLoadRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ingredients
  ]

  @type t :: %__MODULE__{
          :ingredients => [String.t()]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.ComputeGlycemicLoadRequest do
  def decode(value, _options) do
    value
  end
end