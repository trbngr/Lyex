defmodule Lyex.Client do
  defmacro __using__(opts) do
    Lyex.init(%Lyex{
      service_name: Keyword.get(opts, :service_name),
      wsdl: Keyword.get(opts, :wsdl),
      cache_dir: Keyword.get(opts, :cache_dir, "./priv")
    })
  end
end
