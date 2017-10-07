## users table
|Column|type|options|
|------|----|-------|
|account_name|string|null: false|
|nickname|string|null: false, unique: true|
|sex|string||
|prefecture|string||
|birthday|date||
### Association
- has_many :bokes
- has_many :odais
- has_many :comments


## bokes table
|Column|type|options|
|------|----|-------|
|odai_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|
|text|string|null: false|
|tag|string||
|category|string|null: false|

### Association
- belongs_to :user
- belongs_to :odai
- has_many :comments


## odais table
|Column|type|options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|img|string|null: false|
|title|string||
|tag|||
|category|string|null: false|
|authorization|string|null: false|

### Association
- has_many :bokes
- belongs_to :user
- has_many :comments


## comments table
|Column|type|options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|star|string|null: false|
|text|string||


### Association
- belongs_to :boke
- validates :comments, length: { in:1..60 }
- belongs_to :user
