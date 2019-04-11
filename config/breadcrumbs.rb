# items#index
crumb :root do
  link "メルカリ", root_path
end

# items#show
crumb :item do |item|
  link 'アイテム名', item_path(item)
  parent :root
end

# mypages#index
crumb :mypages do
  link 'マイページ', mypages_path
end
