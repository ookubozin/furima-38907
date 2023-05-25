# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| name               | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birthday           | date                | null: false               |

### Association

* has_many :items
* has_many :purchase_records

## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name                                | text       | null: false                    |
| explanation                         | text       | null: false                    |
| price                               | integer    | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase_record

## purchase_records table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :shiipping_addressed

## shiipping_addressed

| Column          | Type       | Options     |
|-----------------|------------|-------------|
| post_code       | text       | null: false |
| prefectures     | text       | null: false |
| manicipalities  | text       | null: false |
| house_number    | text       | null: false |
| building_name   | text       | null: false |
| phone_number    | integer    | null: false |
`
### Association

- belongs_to :purchase_record