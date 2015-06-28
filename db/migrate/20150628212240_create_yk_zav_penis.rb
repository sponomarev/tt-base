class CreateYkZavPenis < ActiveRecord::Migration
  def change
    create_table :yk_zav_peni, comment: 'YK_ZAV_PENI' do |t|
      t.integer :account, comment: '№ л.сч', index: true
      t.date :period, comment: 'Период'
      t.string :service, comment: 'Услуга'
      t.decimal :percent, precision: 16, scale: 4, comment: 'Процент'
      t.decimal :earn, precision: 16, scale: 2, comment: 'Начислено пени'
      t.decimal :paid, precision: 16, scale: 2, comment: 'Оплачено пени'
      t.decimal :debt, precision: 16, scale: 2, comment: 'Задолженность по пени'

      t.timestamps
    end

    add_index :yk_zav_peni, :account
    add_index :yk_zav_peni, :period
    add_index :yk_zav_peni, :service
    add_index :yk_zav_peni, :percent
    add_index :yk_zav_peni, :earn
    add_index :yk_zav_peni, :paid
    add_index :yk_zav_peni, :debt
  end
end
