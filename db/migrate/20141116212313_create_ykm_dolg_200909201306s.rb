class CreateYkmDolg200909201306s < ActiveRecord::Migration
  def change
    create_table :ykm_dolg_200909201306, comment: '(17)YKM_DOLG_2009_09_2013_06' do |t|
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

    add_index :ykm_dolg_200909201306, :account
    add_index :ykm_dolg_200909201306, :street
    add_index :ykm_dolg_200909201306, :house
    add_index :ykm_dolg_200909201306, :appartment
    add_index :ykm_dolg_200909201306, :lastname
    add_index :ykm_dolg_200909201306, :firstname
    add_index :ykm_dolg_200909201306, :middlename
    add_index :ykm_dolg_200909201306, :period
    add_index :ykm_dolg_200909201306, :service
    add_index :ykm_dolg_200909201306, :opening_balance
    add_index :ykm_dolg_200909201306, :earn
    add_index :ykm_dolg_200909201306, :benefit
    add_index :ykm_dolg_200909201306, :recalculation
    add_index :ykm_dolg_200909201306, :compensation
    add_index :ykm_dolg_200909201306, :payable
    add_index :ykm_dolg_200909201306, :payment
    add_index :ykm_dolg_200909201306, :outgoing_balance
  end
end
