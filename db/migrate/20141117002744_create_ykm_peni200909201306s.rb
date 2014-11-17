class CreateYkmPeni200909201306s < ActiveRecord::Migration
  def change
    create_table :ykm_peni200909201306, comment: '(7)YKM_PENI_2009_09_2013_06' do |t|
      t.integer :account, comment: '№ л.сч', index: true
      t.date :period, comment: 'Период'
      t.string :service, comment: 'Услуга'
      t.decimal :percent, precision: 8, scale: 4, comment: 'Процент'
      t.decimal :earn, precision: 8, scale: 2, comment: 'Начислено пени'
      t.decimal :paid, precision: 8, scale: 2, comment: 'Оплачено пени'
      t.decimal :debt, precision: 8, scale: 2, comment: 'Задолженность по пени'

      t.timestamps
    end

    add_index :ykm_peni200909201306, :account
    add_index :ykm_peni200909201306, :period
    add_index :ykm_peni200909201306, :service
    add_index :ykm_peni200909201306, :percent
    add_index :ykm_peni200909201306, :earn
    add_index :ykm_peni200909201306, :paid
    add_index :ykm_peni200909201306, :debt
  end
end
