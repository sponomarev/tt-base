# == Schema Information
#
# Table name: yk_zav_saldo # YK Zav Saldo
#
#  id               :integer          not null, primary key # YK Zav Saldo
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

class YkZavSaldo < ActiveRecord::Base
  self.table_name = :yk_zav_saldo
end
