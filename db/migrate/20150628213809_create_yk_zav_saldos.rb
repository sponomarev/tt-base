class CreateYkZavSaldos < ActiveRecord::Migration
  def change
    create_table :yk_zav_saldo, comment: 'YK Zav Saldo' do |t|
      t.integer :account, comment: '№ л.сч', index: true
      t.string :street, comment: 'Улица'
      t.string :house, comment: '№ Дома'
      t.string :appartment, comment: '№ Квартиры'
      t.string :lastname, comment: 'Фамилия'
      t.string :firstname, comment: 'Имя'
      t.string :middlename, comment: 'Отчество'
      t.date :period, comment: 'Период'
      t.string :service, comment: 'Услуга'
      t.decimal :opening_balance, precision: 8, scale: 2, comment: 'Входящее сальдо'
      t.decimal :earn, precision: 8, scale: 2, comment: 'Начислено'
      t.decimal :benefit, precision: 8, scale: 2, comment: 'Льгота'
      t.decimal :recalculation, precision: 8, scale: 2, comment: 'Разовый перерасчет'
      t.decimal :compensation, precision: 8, scale: 2, comment: 'Компенсация'
      t.decimal :payable, precision: 8, scale: 2, comment: 'К оплате'
      t.decimal :payment, precision: 8, scale: 2, comment: 'Оплата'
      t.decimal :outgoing_balance, precision: 8, scale: 2, comment: 'Исходящее сальдо'

      t.timestamps
    end

    add_index :yk_zav_saldo, :account
    add_index :yk_zav_saldo, :street
    add_index :yk_zav_saldo, :house
    add_index :yk_zav_saldo, :appartment
    add_index :yk_zav_saldo, :lastname
    add_index :yk_zav_saldo, :firstname
    add_index :yk_zav_saldo, :middlename
    add_index :yk_zav_saldo, :period
    add_index :yk_zav_saldo, :service
    add_index :yk_zav_saldo, :opening_balance
    add_index :yk_zav_saldo, :earn
    add_index :yk_zav_saldo, :benefit
    add_index :yk_zav_saldo, :recalculation
    add_index :yk_zav_saldo, :compensation
    add_index :yk_zav_saldo, :payable
    add_index :yk_zav_saldo, :payment
    add_index :yk_zav_saldo, :outgoing_balance
  end
end
