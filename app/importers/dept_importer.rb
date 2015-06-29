require 'csv'

module DeptImporter
  def self.run(model, filename)

    log = Logger.new 'log/import.log'
    log.info "Start import of #{model} with #{filename}"

    CSV.foreach(filename, headers: true, col_sep: ';') do |row|
      begin
        model.create account: row[0].try(:strip),
                     street: row[1].try(:strip),
                     house: row[2].try(:strip),
                     appartment: row[3].try(:strip),
                     lastname: row[4].try(:strip),
                     firstname: row[5].try(:strip),
                     middlename: row[6].try(:strip),
                     period: row[7].try(:strip),
                     service: row[8].try(:strip),
                     opening_balance: row[9].try(:strip),
                     earn: row[10].try(:strip),
                     benefit: row[11].try(:strip),
                     recalculation: row[12].try(:strip),
                     compensation: row[13].try(:strip),
                     payable: row[14].try(:strip),
                     payment: row[15].try(:strip),
                     outgoing_balance: row[16].try(:strip)
      rescue => e
        log.error e.message
        log.error row.to_s
      end
    end
  end
end
