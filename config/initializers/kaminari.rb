module Kaminari
  module PageScopeMethods
    def total_count
      @_hacked_total_count || (@_hacked_total_count = self.connection.execute("SELECT (reltuples)::integer FROM pg_class r WHERE relkind = 'r' AND relname ='#{table_name}'").first["reltuples"].to_i)
    end
  end
end
