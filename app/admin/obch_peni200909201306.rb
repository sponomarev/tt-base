ActiveAdmin.register ObchPeni200909201306 do
  menu parent: 'Пени'
  config.xlsx_builder.i18n_scope = [:attributes]
  actions :all, except: [:new, :edit, :destroy]

  filter :account
  filter :period
  filter :service
  filter :percent
  filter :earn
  filter :paid
  filter :debt

  index do
    selectable_column
    column :account
    column :period
    column :service
    column :percent
    column :earn
    column :paid
    column :debt
    actions
  end
end
