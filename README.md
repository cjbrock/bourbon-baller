# Bourbon Baller (Bourbon Review Site)

## User

- Username
- Email
- Name
- Password
 - has_many :reviews
 - has_many :bourbons through: :reviews

## Distillery

- Name
- In_store :boolean
- has_many :bourbons

## Bourbon

- Name
- Type
- Description
- distillery_id
- has_many :reviews
- has_many :users through: :reviews
- belongs_to :distillery

## Reviews

- Stars
- Title
- Content
- Bourbon_id
- User_id
- belongs_to :bourbon
- belongs_to :user
