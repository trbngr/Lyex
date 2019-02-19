defmodule Lyex.Client do
  alias Lyex.Client.Generation

  defmacro __using__(opts) do
    service = %Lyex{
      service_name: opts[:service_name] || raise("Requires service_name property"),
      wsdl: opts[:wsdl] || raise("Requires wsdl property"),
      cache_dir: opts[:cache_dir] || "./priv"
    }

    Lyex.init(service)

    # Generation.generate_types(service.service_name, operations)
    # Generation.generate_services(service.service_name, operations)
  end
end
