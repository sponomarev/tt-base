# == Schema Information
#
# Table name: obch_dolg_201307201406 # (17)Obch_DOLG_2013_07_2014_06
#
#  id               :integer          not null, primary key # (17)Obch_DOLG_2013_07_2014_06
#  account          :integer                                # № л.сч
#  street           :string(255)                            # Улица
#  house            :string(255)                            # № Дома
#  appartment       :string(255)                            # № Квартиры
#  lastname         :string(255)                            # Фамилия
#  firstname        :string(255)                            # Имя
#  middlename       :string(255)                            # Отчество
#  period           :date                                   # Период
#  service          :string(255)                            # Услуга
#  opening_balance  :decimal(8, 2)                          # Входящее сальдо
#  earn             :decimal(8, 2)                          # Начислено
#  benefit          :decimal(8, 2)                          # Льгота
#  recalculation    :decimal(8, 2)                          # Разовый перерасчет
#  compensation     :decimal(8, 2)                          # Компенсация
#  payable          :decimal(8, 2)                          # К оплате
#  payment          :decimal(8, 2)                          # Оплата
#  outgoing_balance :decimal(8, 2)                          # Исходящее сальдо
#  created_at       :datetime
#  updated_at       :datetime
#

class ObchDolg201307201406 < ActiveRecord::Base
  self.table_name = :obch_dolg_201307201406
end
