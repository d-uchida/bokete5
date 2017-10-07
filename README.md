
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


## comments table
|Column|type|options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|star|integer|null: false|
|text|string||

### Association
- belongs_to :boke
- belongs_to :user
- validates :star length: { in:1..3 }
- validates :text, length: { in:1..60 }


## odais table
|Column|type|options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|img|string|null: false|
|title|string||
|tag|string||
|category|string|null: false|
|authorization|string|null: false|

### Association
- has_many :bokes
- belongs_to :user
- has_many :comments


## users table
|Column|type|options|
|------|----|-------|
|bokete_id|string|null: false, unique: true|
|nickname|string|null: false|
|sex|string||
|prefecture|string||
|birthday|date||
|email| string|null: false, unique: true|
### Association
- has_many :bokes
- has_many :odais
- has_many :comments
