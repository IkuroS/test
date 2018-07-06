# @.each do |変数| って何してるの？

range = [1..20]

range.each do |n|
  puts n
end

だと、rangeに含まれる数字が順番に代入されていく
@data.each do |obj|
  =obj.id

だと、@dataに入っているidがDataの数だけ

#<%%>と<%=%>の違いは？

前者はスクリプト片、後者は式を評価した値
例えば、値を入力し、同じページに結果を出すものなんかは前者でないとエラーがでる

#layoutfileとpeoplefileの関係

peoplefileはbody内の記述