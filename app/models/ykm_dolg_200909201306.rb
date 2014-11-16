# == Schema Information
#
# Table name: ykm_dolg_200909201306 # (17)YKM_DOLG_2009_09_2013_06
#
#  id               :integer          not null, primary key # (17)YKM_DOLG_2009_09_2013_06
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

class YkmDolg_200909201306 < ActiveRecord::Base
  self.table_name = :ykm_dolg_200909201306
end
