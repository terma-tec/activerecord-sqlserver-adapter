module Arel
  module Visitors
    class SQLServer2000 < SQLServer
      
      def visit_Arel_Nodes_Limit(o)
        "TOP #{visit o.expr}"
      end
      
    end
  end
end

Arel::Visitors::VISITORS['sqlserver'] = Arel::Visitors::SQLServer2000
