# テーブル設計

＃＃usersテーブル(ユーザー情報)

| Column             | Type    | Options                       |
| ------------------ | ------- | ----------------------------- |
| nickname           | string  | null: false                   |
| email              | string  | null: false, unique: true     |
| encrypted_password | string  | null: false                   |
| family_name        | string  | null: false                   |
| first_name         | string  | null: false                   |
| family_name_kana   | string  | null: false                   |
| first_name_kana    | string  | null: false                   |
| birth_day          | date    | null: false                   |

Association
has_many :breakfasts
has_many :dinner

##breakfastテーブル(朝ごはん情報)

| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| cooking_name  | string    | null:false                     |
| menu          | text      | null:false                     |
| name          | string    | null:false                     |
| user          | reference | null: false, foreign_key: true |

Association
belongs_to :user

##dinnerテーブル(夜ご飯情報)

| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| cooking_name  | string    | null:false                     |
| menu          | text      | null:false                     |
| name          | string    | null:false                     |
| user          | reference | null: false, foreign_key: true |

Association
belongs_to :user