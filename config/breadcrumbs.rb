# items#index
crumb :root do
  link "メルカリ", root_path
end

# items#show
crumb :item do |item|
  link '正規品！COACH【コーチ】★★大きめ ミニシグネチャー ショルダーバッグ', item_path(item)
  parent :root
end

# users#index
crumb :users do
  link 'マイページ', users_path
end

# card#index
crumb :cards do
  link '支払い方法', user_cards_path
  parent :users
end

# card#new
crumb :new do
  link 'クレジットカード情報入力', new_user_card_path
  parent :cards
end

# transactions/:id/edit
crumb :transactions do
  link '支払い方法', edit_transaction_path
  parent :users
end

# identification/:id/edit
crumb :identification do
  link '本人情報の登録', edit_identification_path
  parent :users
end

# profile/:id/edit
crumb :profile do
  link 'プロフィール', edit_profile_path
  parent :users
end
