# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipeTasteById200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sweetness,
    :saltiness,
    :sourness,
    :bitterness,
    :savoriness,
    :fattiness,
    :spiciness
  ]

  @type t :: %__MODULE__{
          :sweetness => float(),
          :saltiness => float(),
          :sourness => float(),
          :bitterness => float(),
          :savoriness => float(),
          :fattiness => float(),
          :spiciness => float()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetRecipeTasteById200Response do
  def decode(value, _options) do
    value
  end
end
