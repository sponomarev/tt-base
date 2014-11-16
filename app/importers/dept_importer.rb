require 'csv'

module DeptImporter
  def self.run(model, filename)

    log = Logger.new 'log/import.log'
    log.info "Start import of #{model} with #{filename}"

    CSV.foreach(filename, headers: true, col_sep: ';') do |row|
      begin
        model.create account: row[0].strip,
                     street: row[1].strip,
                     house: row[2].strip,
                     appartment: row[3].strip,
                     lastname: row[4].strip,
                     firstname: row[5].strip,
                     middlename: row[6].strip,
                     period: row[7].strip,
                     service: row[8].strip,
                     opening_balance: row[9].strip,
                     earn: row[10].strip,
                     benefit: row[11].strip,
                     recalculation: row[12].strip,
                     compensation: row[13].strip,
                     payable: row[14].strip,
                     payment: row[15].strip,
                     outgoing_balance: row[16].strip
      rescue
        log.warn row.to_s
      end
    end
  end
end
