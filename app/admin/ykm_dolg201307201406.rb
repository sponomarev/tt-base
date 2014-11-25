ActiveAdmin.register YkmDolg201307201406 do
  menu parent: 'Задолженности'
  config.xlsx_builder.i18n_scope = [:attributes]
  actions :all, except: [:new, :edit, :destroy]

  filter :account
  filter :street
  filter :house
  filter :appartment
  filter :lastname
  filter :firstname
  filter :middlename
  filter :period
  filter :service
  filter :opening_balance
  filter :earn
  filter :benefit
  filter :recalculation
  filter :compensation
  filter :payable
  filter :payment
  filter :outgoing_balance

  index do
    selectable_column
    column :account
    column :street
    column :house
    column :appartment
    column :lastname
    column :firstname
    column :middlename
    column :period
    column :service
    column :opening_balance
    column :earn
    column :benefit
    column :recalculation
    column :compensation
    column :payable
    column :payment
    column :outgoing_balance
    actions
  end
end
