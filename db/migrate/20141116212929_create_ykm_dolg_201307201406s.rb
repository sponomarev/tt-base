class CreateYkmDolg201307201406s < ActiveRecord::Migration
  def change
    create_table :ykm_dolg_201307201406, comment: '(17)YKM_DOLG_2013_07_2014_06' do |t|
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

    add_index :ykm_dolg_201307201406, :account
    add_index :ykm_dolg_201307201406, :street
    add_index :ykm_dolg_201307201406, :house
    add_index :ykm_dolg_201307201406, :appartment
    add_index :ykm_dolg_201307201406, :lastname
    add_index :ykm_dolg_201307201406, :firstname
    add_index :ykm_dolg_201307201406, :middlename
    add_index :ykm_dolg_201307201406, :period
    add_index :ykm_dolg_201307201406, :service
    add_index :ykm_dolg_201307201406, :opening_balance
    add_index :ykm_dolg_201307201406, :earn
    add_index :ykm_dolg_201307201406, :benefit
    add_index :ykm_dolg_201307201406, :recalculation
    add_index :ykm_dolg_201307201406, :compensation
    add_index :ykm_dolg_201307201406, :payable
    add_index :ykm_dolg_201307201406, :payment
    add_index :ykm_dolg_201307201406, :outgoing_balance
  end
end
