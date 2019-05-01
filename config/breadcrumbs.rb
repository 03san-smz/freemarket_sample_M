# items#index
crumb :root do
  link "メルカリ", root_path
end

# items#show
crumb :item_show do |item|
  link '正規品！COACH【コーチ】★★大きめ ミニシグネチャー ショルダーバッグ', item_path(item)
  parent :root
end

# mypages#index
crumb :mypages_index do
  link 'マイページ', mypages_path
end

# cards#index
crumb :cards_index do
  link '支払い方法', mypage_cards_path
  parent :mypages_index
end

# cards#new
crumb :cards_new do
  link 'クレジットカード情報入力', new_mypage_card_path
  parent :cards_index
end

# transactions/:id/edit
crumb :transactions do
  link '支払い方法', edit_transaction_path
  parent :mypages_index
end

# identification/:id/edit
crumb :identification do
  link '本人情報の登録', edit_identification_path
  parent :mypages_index
end

# profile/:id/edit
crumb :profile do
  link 'プロフィール', edit_profile_path
  parent :mypages_index
end
