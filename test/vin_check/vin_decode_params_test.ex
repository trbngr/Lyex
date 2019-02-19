defmodule VinCheck.VinDecodeParamsTest do
  use ExUnit.Case

  test "params" do
    definition = %Lyex.Wsdl.Schema.Element{
      name: "Request",
      type: [
        %Lyex.Wsdl.Schema.Element{
          name: "EQBehavior",
          type: "short"
        },
        %Lyex.Wsdl.Schema.Element{
          name: "ValuationData",
          type: [
            %Lyex.Wsdl.Schema.Element{
              name: "KilometersDriven",
              type: "int"
            },
            %Lyex.Wsdl.Schema.Element{
              name: "FirstRegMonth",
              type: "short"
            },
            %Lyex.Wsdl.Schema.Element{
              name: "FirstRegYear",
              type: "short"
            }
          ]
        }
      ]
    }

    [
      {"request",
       [
         {"valuation_data",
          [{"first_reg_year", 0}, {"first_reg_month", 0}, {"kilometers_driven", 0}]},
         {"eq_behavior", 0}
       ]}
    ] = Lyex.Wsdl.Compiler.Structures.get_struct_fields(definition, [])
  end
end
