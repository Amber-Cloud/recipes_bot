# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetWineDescription200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :wineDescription
  ]

  @type t :: %__MODULE__{
          :wineDescription => String.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetWineDescription200Response do
  def decode(value, _options) do
    value
  end
end
