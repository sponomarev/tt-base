# == Schema Information
#
# Table name: yk_zav_peni # YK_ZAV_PENI
#
#  id         :integer          not null, primary key # YK_ZAV_PENI
#  account    :integer                                # № л.сч
#  period     :date                                   # Период
#  service    :string(255)                            # Услуга
#  percent    :decimal(16, 4)                         # Процент
#  earn       :decimal(16, 2)                         # Начислено пени
#  paid       :decimal(16, 2)                         # Оплачено пени
#  debt       :decimal(16, 2)                         # Задолженность по пени
#  created_at :datetime
#  updated_at :datetime
#

class YkZavPeni < ActiveRecord::Base
  self.table_name = :yk_zav_peni
end
