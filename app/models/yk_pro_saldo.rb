# == Schema Information
#
# Table name: yk_pro_saldo # YK Pro Saldo
#
#  id               :integer          not null, primary key # YK Pro Saldo
#  account          :integer                                # № л.сч
#  street           :string(255)                            # Улица
#  house            :string(255)                            # № Дома
#  appartment       :string(255)                            # № Квартиры
#  lastname         :string(255)                            # Фамилия
#  firstname        :string(255)                            # Имя
#  middlename       :string(255)                            # Отчество
#  period           :date                                   # Период
#  service          :string(255)                            # Услуга
#  opening_balance  :decimal(16, 2)                         # Входящее сальдо
#  earn             :decimal(16, 2)                         # Начислено
#  benefit          :decimal(16, 2)                         # Льгота
#  recalculation    :decimal(16, 2)                         # Разовый перерасчет
#  compensation     :decimal(16, 2)                         # Компенсация
#  payable          :decimal(16, 2)                         # К оплате
#  payment          :decimal(16, 2)                         # Оплата
#  outgoing_balance :decimal(16, 2)                         # Исходящее сальдо
#  created_at       :datetime
#  updated_at       :datetime
#

class YkProSaldo < ActiveRecord::Base
  self.table_name = :yk_pro_saldo
end
