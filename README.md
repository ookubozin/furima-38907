# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birthday           | date                | null: false               |

### Association

* has_many :items
* has_many :orders

## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name                                | string     | null: false                    |
| explanation                         | text       | null: false                    |
| category_id                         | integer    | null: false                    |
| status_id                           | integer    | null: false                    |
| delivery_charge_id                  | integer    | null: false                    |
| prefecture_id                       | integer    | null: false                    |
| delivery_time_id                    | integer    | null: false                    |
| price                               | integer    | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :orders

## orders table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses

| Column          | Type       | Options                        |
|-----------------|------------|--------------------------------|
| post_code       | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| municipalities  | string     | null: false                    |
| house_number    | string     | null: false                    |
| building_name   | string     |                                |
| phone_number    | string     | null: false                    |
| purchase_record | references | null: false, foreign_key: true |


### Association

- belongs_to :orders