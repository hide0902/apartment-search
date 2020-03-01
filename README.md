# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## apartment-searchのDB設計

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