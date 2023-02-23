# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ClassifyCuisine200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :cuisine,
    :cuisines,
    :confidence
  ]

  @type t :: %__MODULE__{
          :cuisine => String.t(),
          :cuisines => [String.t()],
          :confidence => float()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.ClassifyCuisine200Response do
  def decode(value, _options) do
    value
  end
end