defmodule Hedwig.Mixfile do
  use Mix.Project

  def project do
    [ app: :hedwig,
      version: "0.0.1",
      elixir: ">= 0.14.3",
      deps: deps ]
  end

  def application do
    [
      applications: [:crypto, :ssl, :exml, :logger],
      mod: { Hedwig, [] }
    ]
  end

  defp deps do
    [
      {:logger, github: "josevalim/logger"},
      {:exml, github: "paulgray/exml"}
    ]
  end
end
