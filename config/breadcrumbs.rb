# items#index
crumb :root do
  link "メルカリ", root_path
end

# items#show
crumb :item do |item|
  link '正規品！COACH【コーチ】★★大きめ ミニシグネチャー ショルダーバッグ', item_path(item)
  parent :root
end

# mypages#index
crumb :mypages do
  link 'マイページ', mypages_path
end

# transactions/:id/edit
crumb :transactions do
  link '支払い方法', edit_transaction_path
  parent :mypages
end

# identification/:id/edit
crumb :identification do
  link '本院情報の登録', edit_identification_path
  parent :mypages
end

# profile/:id/edit
crumb :profile do
  link 'プロフィール', edit_profile_path
  parent :mypages
end
