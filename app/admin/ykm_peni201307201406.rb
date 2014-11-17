ActiveAdmin.register YkmPeni201307201406 do
  menu parent: 'Пени'

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
