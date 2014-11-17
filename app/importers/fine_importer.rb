require 'csv'

module FineImporter
  def self.run(model, filename)

    log = Logger.new 'log/import.log'
    log.info "Start import of #{model} with #{filename}"

    CSV.foreach(filename, headers: true, col_sep: ';') do |row|
      begin
        model.create account: row[0].strip,
                     period: row[1].strip,
                     service: row[2].strip,
                     percent: row[3].strip,
                     earn: row[4].strip,
                     paid: row[5].strip,
                     debt: row[6].strip
      rescue
        log.warn row.to_s
      end
    end
  end
end
