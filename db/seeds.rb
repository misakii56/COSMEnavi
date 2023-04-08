# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   ParsonalColor.create(color_name: 'Yellow')
#   SkinType.create(type_name: 'あ')
Admin.create!(
   email: 'test@test',
   password: '000000'
)
#消してもOK
Cosmetic.create!(
  [  {brand: "CEZANNE", name: "超細芯アイブロウ", color: "ライトブラウン"},
     {brand: "CEZANNE", name: "超細芯アイブロウ", color: "ディープブラウン"},
     {brand: "CANMAKE", name: "クリーミータッチライナー", color: "ディープブラック"},
     {brand: "CANMAKE", name: "クリーミータッチライナー", color: "ミディアムブラウン"},
     {brand: "CEZANNE", name: "太芯アイブロウ", color: "明るめブラウン"},
     {brand: "CEZANNE", name: "太芯アイブロウ", color: "ナチュラルブラウン"},
     {brand: "CEZANNE", name: "ジェルアイライナー", color: "ブラック"},
     {brand: "CEZANNE", name: "ジェルアイライナー", color: "テラコッタブラウン"},
     {brand: "CEZANNE", name: "ボリュームラッシュマスカラ", color: "ブラック"},
     {brand: "CEZANNE", name: "セパレートロングマスカラ", color: "ブラック"},
     {brand: "CEZANNE", name: "セパレートロングマスカラ", color: "ブラウン"},
     {brand: "CEZANNE", name: "シングルカラーアイシャドウ", color: "パールベージュ"},
     {brand: "CEZANNE", name: "シングルカラーアイシャドウ", color: "クリアラメ"},
     {brand: "CEZANNE", name: "ウォータリーティントリップ", color: "ナチュラルピンク"},
     {brand: "CEZANNE", name: "ウォータリーティントリップ", color: "コーラルブーケ"},
     {brand: "CEZANNE", name: "ウォータリーティントリップ", color: "カフェブラウン"},
     {brand: "CEZANNE", name: "皮脂テカリ防止下地", color: "ピンクベージュ"},
     {brand: "CEZANNE", name: "皮脂テカリ防止下地", color: "ライトブルー"},
     {brand: "CEZANNE", name: "ナチュラルチークN", color: "ピーチピンク"},
     {brand: "CEZANNE", name: "ナチュラルチークN", color: "ゴールドオレンジ"},
     {brand: "CEZANNE", name: "クッションファンデーション", color: "明るいベージュ系"},
     {brand: "CEZANNE", name: "クッションファンデーション", color: "明るいオークル系"},
     {brand: "CEZANNE", name: "UVクリアフェイスパウダー", color: "ライトベージュ"},
     {brand: "CEZANNE", name: "UVクリアフェイスパウダー", color: "ナチュラル"},
     {brand: "CANMAKE", name: "パーフェクトエアリーアイブロウ", color: "ビターブラウン"},
     {brand: "CANMAKE", name: "パーフェクトエアリーアイブロウ", color: "ミルクティーブラウン"},
     {brand: "CANMAKE", name: "アイシャドウベース", color: "ピンクパール"},
     {brand: "CANMAKE", name: "アイシャドウベース", color: "ラディアントブルー"},
     {brand: "CANMAKE", name: "オフするんマスカラ", color: "ブラック"},
     {brand: "CANMAKE", name: "オフするんマスカラ", color: "ミルクブラウン"},
     {brand: "CANMAKE", name: "マシュマロフィニッシュパウダー", color: "ディアレストブーケ"},
     {brand: "CANMAKE", name: "マシュマロフィニッシュパウダー", color: "サクラチュール"},
     {brand: "CANMAKE", name: "ジューシーリップティント", color: "アンティークローズ"},
     {brand: "CANMAKE", name: "ジューシーリップティント", color: "テラコッタベアー"},
     {brand: "CANMAKE", name: "クリームチーク", color: "スウィートアプリコット"},
     {brand: "CANMAKE", name: "クリームチーク", color: "キャラメルラテ"},
     {brand: "INTEGRATE", name: "エアフィールメーカー化粧下地", color: "ラベンダー"},
     {brand: "INTEGRATE", name: "エアフィールメーカー化粧下地", color: "ミント"},
     {brand: "INTEGRATE", name: "エアフィールメーカー化粧下地", color: "レモン"},
     {brand: "INTEGRATE", name: "プロフィニッシュファンデーション", color: "オークル00"},
     {brand: "INTEGRATE", name: "プロフィニッシュファンデーション", color: "オークル20"},
     {brand: "INTEGRATE", name: "スーパーキープ　リキッドライナー", color: "ブラック"},
     {brand: "INTEGRATE", name: "スーパーキープ　リキッドライナー", color: "ブラウン"},
     {brand: "INTEGRATE", name: "マツイクガールズラッシュ（おてんばカールマスカラ）", color: "ブラック"},
     {brand: "INTEGRATE", name: "マツイクガールズラッシュ（しなやかカールマスカラ）", color: "ブラック"},
     {brand: "INTEGRATE", name: "アイブロウペンシルN", color: "ダークブラウン"},
     {brand: "INTEGRATE", name: "アイブロウペンシルN", color: "グレー"},
     {brand: "INTEGRATE", name: "メルティーモードチーク", color: "PK384"},
     {brand: "INTEGRATE", name: "ビューティートリックアイブロウ", color: "BR631"},
     {brand: "INTEGRATE", name: "すっぴんメイカー　チーク＆リップ", color: "PK322"}
  ]
)
