class CreateYkProSaldos < ActiveRecord::Migration
  def change
    create_table :yk_pro_saldo, comment: 'YK Pro Saldo' do |t|
      t.integer :account, comment: '№ л.сч', index: true
      t.string :street, comment: 'Улица'
      t.string :house, comment: '№ Дома'
      t.string :appartment, comment: '№ Квартиры'
      t.string :lastname, comment: 'Фамилия'
      t.string :firstname, comment: 'Имя'
      t.string :middlename, comment: 'Отчество'
      t.date :period, comment: 'Период'
      t.string :service, comment: 'Услуга'
      t.decimal :opening_balance, precision: 16, scale: 2, comment: 'Входящее сальдо'
      t.decimal :earn, precision: 16, scale: 2, comment: 'Начислено'
      t.decimal :benefit, precision: 16, scale: 2, comment: 'Льгота'
      t.decimal :recalculation, precision: 16, scale: 2, comment: 'Разовый перерасчет'
      t.decimal :compensation, precision: 16, scale: 2, comment: 'Компенсация'
      t.decimal :payable, precision: 16, scale: 2, comment: 'К оплате'
      t.decimal :payment, precision: 16, scale: 2, comment: 'Оплата'
      t.decimal :outgoing_balance, precision: 16, scale: 2, comment: 'Исходящее сальдо'

      t.timestamps
    end

    add_index :yk_pro_saldo, :account
    add_index :yk_pro_saldo, :street
    add_index :yk_pro_saldo, :house
    add_index :yk_pro_saldo, :appartment
    add_index :yk_pro_saldo, :lastname
    add_index :yk_pro_saldo, :firstname
    add_index :yk_pro_saldo, :middlename
    add_index :yk_pro_saldo, :period
    add_index :yk_pro_saldo, :service
    add_index :yk_pro_saldo, :opening_balance
    add_index :yk_pro_saldo, :earn
    add_index :yk_pro_saldo, :benefit
    add_index :yk_pro_saldo, :recalculation
    add_index :yk_pro_saldo, :compensation
    add_index :yk_pro_saldo, :payable
    add_index :yk_pro_saldo, :payment
    add_index :yk_pro_saldo, :outgoing_balance
  end
end
