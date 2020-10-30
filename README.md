# テーブル設計

## Usersテーブル
| Columu     | Type       | Options     |
|- - - - - - | - - - - - -|- - - - - - -|
| nickname   | string     | null: false |
| email      | string     | null: false |
| password   | string     | null: false |
| birthday   | date       | null: false |

### Association
has_many :events
has_many :groups, through: group_users
has_many :group_users

## Eventsテーブル
| Columu    | Type       | Options                        |
|- - - - - -|- - - - - - | - - - - - - - - - - - - - - - -|
| title     | string     | null: false                    |
| content   | string     | null: false                    |
| start     | datetime   | null: false                    |
| end       | datetime   | null: false                    |
| user_id   | integer    | null: false ,foregin_key: true |

### Association
belongs_to :user
belomgs_to :group

## Groupsテーブル
| Columu     | Type     | Options        |
|- - - - - - | - - - - -|- - - - - - - - |
| name       | string   | null: false    |

### Association
has_many :users, through: group_users
has_many :group_users
has_many :events

## group_usersテーブル
| Columu     | Type     | Options                        |
|- - - - - - | - - - - -|- - - - - - - - - - - - - - - - |
| user_id    | integer  | null: false, foregin_key: true |
| event_id   | integer  | null: false, foregin_key: true |

### Association
belongs_to :user
belongs_to :group