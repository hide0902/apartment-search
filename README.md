# Apartment Search

## App URL
http://52.198.193.160/

## 機能
* 賃貸不動産の情報を見ることができる。(物件情報はサンプルですので、実際に募集は行っていません。)  
  
* ユーザー登録すると気に入った物件をお気に入りリストに追加できる。  
  
* 管理者権限を与えられているユーザーのみ物件情報の新規登録、編集、削除ができる。  
  

## 使い方
1. ヘッダーにある新規登録から、ユーザー登録を行ってください。  
  
   ユーザー登録無しでも物件情報は観覧できますが、いいね機能が使用出来ません。  
  
   管理者権限なしのアカウント  
  
   メールアドレス:test@co.jp  
  
   パスワード:111111  
  
   管理者権限ありのアカウント  
  
   メールアドレス:admin@co.jp  
  
   パスワード:111111
  
2. トップページ「駅から探す」、「エリアから探す」のどちらかを選びます。  
  
3. 検索画面に進み条件を打ちこんで検索ボタンをクリックします。  
  
4. 検索結果より気に入った部屋の「詳細を見る」をクリックします。  
  
5. 詳細画面に進むと、ユーザー登録がされていれば右上に「お気に入りリストに追加」ボタンが表示されています。  
  
6. ヘッダーにある「マイページ」を押すとお気に入りリストを観覧出来ます。  
  
7. 管理者権限が与えられているユーザーの場合、マイページに「サイト管理ページ」ボタンが追加されているので、そちらから物件登録等が行えます。  

## バージョン
* Ruby 2.5.1  
  
* Rails 5.2.3  


## Authors
[Hideyuki Nagatani](https://github.com/hide0902)

# apartment-searchのDB設計

## buildingsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|prefecture|string||
|city|string||
|street|string||
|number|string||
|year|string||
|age|integer||
|lock|integer||
|net|integer||
|pets|integer||
|parking|integer||
|bike|integer||
|image_top|staring||
### Association
- has_many :rooms
- has_many :stations

## stationsテーブル
|Column|Type|Options|
|------|----|-------|
|route|string||
|name|string||
|walk|integer||
|building_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :building, optional: true

## roomsテーブル
|Column|Type|Options|
|------|----|-------|
|rent|float||
|service|integer||
|plan|string||
|exclusive|float||
|security|integer||
|key|integer||
|floor|integer||
|bath|integer||
|washroom|integer||
|washing|integer||
|air|intrger||
|second|integer|
|image_plan|string||
|building_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :building, optional: true
- has_many :images
- has_many :likes, dependent: :destroy

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image_sub|string||
|room_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :room, optional: true

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :likes, dependent: :destroy

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|room_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :room