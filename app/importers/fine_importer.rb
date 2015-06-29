require 'csv'

module FineImporter
  def self.run(model, filename)

    log = Logger.new 'log/import.log'
    log.info "Start import of #{model} with #{filename}"

    CSV.foreach(filename, headers: true, col_sep: ';') do |row|
      begin
        model.create account: row[0].try(:strip),
                     period:  row[1].try(:strip),
                     service: row[2].try(:strip),
                     percent: row[3].try(:strip),
                     earn:    row[4].try(:strip),
                     paid:    row[5].try(:strip),
                     debt:    row[6].try(:strip)
      rescue => e
        log.error e.message
        log.error row.to_s
      end
    end
  end
end
