# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ConnectUserRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :username,
    :firstName,
    :lastName,
    :email
  ]

  @type t :: %__MODULE__{
          :username => String.t(),
          :firstName => String.t(),
          :lastName => String.t(),
          :email => String.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.ConnectUserRequest do
  def decode(value, _options) do
    value
  end
end