# == Schema Information
#
# Table name: obch_peni200909201306 # (7)Obch_PENI_2009_09_2013_06
#
#  id         :integer          not null, primary key # (7)Obch_PENI_2009_09_2013_06
#  account    :integer                                # № л.сч
#  period     :date                                   # Период
#  service    :string(255)                            # Услуга
#  percent    :decimal(8, 4)                          # Процент
#  earn       :decimal(8, 2)                          # Начислено пени
#  paid       :decimal(8, 2)                          # Оплачено пени
#  debt       :decimal(8, 2)                          # Задолженность по пени
#  created_at :datetime
#  updated_at :datetime
#

class ObchPeni201307201406 < ActiveRecord::Base
  self.table_name = :obch_peni201307201406
end
