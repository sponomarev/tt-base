class CreateYkProPenis < ActiveRecord::Migration
  def change
    create_table :yk_pro_peni, comment: 'YK_PRO_PENI' do |t|
      t.integer :account, comment: '№ л.сч', index: true
      t.date :period, comment: 'Период'
      t.string :service, comment: 'Услуга'
      t.decimal :percent, precision: 16, scale: 4, comment: 'Процент'
      t.decimal :earn, precision: 16, scale: 2, comment: 'Начислено пени'
      t.decimal :paid, precision: 16, scale: 2, comment: 'Оплачено пени'
      t.decimal :debt, precision: 16, scale: 2, comment: 'Задолженность по пени'

      t.timestamps
    end

    add_index :yk_pro_peni, :account
    add_index :yk_pro_peni, :period
    add_index :yk_pro_peni, :service
    add_index :yk_pro_peni, :percent
    add_index :yk_pro_peni, :earn
    add_index :yk_pro_peni, :paid
    add_index :yk_pro_peni, :debt
  end
end
