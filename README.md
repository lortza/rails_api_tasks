# rails_api_tasks

A Rails API with ipsum users and task data. This is intended to be consumed by a separate React app.

* Ruby 2.5.0
* Rails 5.2.0
* Postgres
* JSON-API formatting with `gem 'jsonapi-rails'`
* Runs on port 4517 (localhost:4517)


## Data Output

### Users

#### All Users

A sample of all users from route `localhost:4517/users`. The actual data includes 10 users.

```
{
    "data": [
        {
            "id": "8",
            "type": "users",
            "attributes": {
                "name": "Bella"
            },
            "relationships": {
                "tasks": {
                    "meta": {
                        "included": false
                    }
                }
            }
        },
        {
            "id": "9",
            "type": "users",
            "attributes": {
                "name": "Daisy"
            },
            "relationships": {
                "tasks": {
                    "meta": {
                        "included": false
                    }
                }
            }
        },
        {
            "id": "10",
            "type": "users",
            "attributes": {
                "name": "Angel"
            },
            "relationships": {
                "tasks": {
                    "meta": {
                        "included": false
                    }
                }
            }
        }
    ],
    "jsonapi": {
        "version": "1.0"
    }
}
```

#### Single User

From route `localhost:4517/users/8`. The Task data only includes `name` and `complete` as `priority` has been filtered out in the `users#show` controller action.

```
{
    "data": {
        "id": "8",
        "type": "users",
        "attributes": {
            "name": "Bella"
        },
        "relationships": {
            "tasks": {
                "data": [
                    {
                        "type": "tasks",
                        "id": "14"
                    },
                    {
                        "type": "tasks",
                        "id": "15"
                    },
                    {
                        "type": "tasks",
                        "id": "16"
                    },
                    {
                        "type": "tasks",
                        "id": "17"
                    },
                    {
                        "type": "tasks",
                        "id": "18"
                    },
                    {
                        "type": "tasks",
                        "id": "19"
                    },
                    {
                        "type": "tasks",
                        "id": "20"
                    },
                    {
                        "type": "tasks",
                        "id": "21"
                    },
                    {
                        "type": "tasks",
                        "id": "22"
                    },
                    {
                        "type": "tasks",
                        "id": "23"
                    }
                ]
            }
        }
    },
    "included": [
        {
            "id": "14",
            "type": "tasks",
            "attributes": {
                "name": "Deep v tumblr sartorial ethical photo booth.",
                "complete": true
            }
        },
        {
            "id": "15",
            "type": "tasks",
            "attributes": {
                "name": "Godard sustainable pug lumbersexual tilde kickstarter ennui.",
                "complete": false
            }
        },
        {
            "id": "16",
            "type": "tasks",
            "attributes": {
                "name": "Messenger bag muggle magic you probably haven't heard of them tofu trust fund fashion axe art party put a bird on it sartorial.",
                "complete": true
            }
        },
        {
            "id": "17",
            "type": "tasks",
            "attributes": {
                "name": "Food truck stumptown ugh phlogiston skateboard austin wolf brooklyn.",
                "complete": false
            }
        },
        {
            "id": "18",
            "type": "tasks",
            "attributes": {
                "name": "Chia diy pabst street biodiesel hella pug.",
                "complete": false
            }
        },
        {
            "id": "19",
            "type": "tasks",
            "attributes": {
                "name": "Pinterest goth knausgaard pour-over mumblecore pug microdosing.",
                "complete": true
            }
        },
        {
            "id": "20",
            "type": "tasks",
            "attributes": {
                "name": "Schlitz biodiesel keffiyeh fashion axe cray gentrify squid.",
                "complete": false
            }
        },
        {
            "id": "21",
            "type": "tasks",
            "attributes": {
                "name": "Marfa offal plaid disrupt trust fund kickstarter paleo franzen freegan.",
                "complete": true
            }
        },
        {
            "id": "22",
            "type": "tasks",
            "attributes": {
                "name": "Chicharrones squid gastropub raw denim tilde readymade venmo art party yolo.",
                "complete": true
            }
        },
        {
            "id": "23",
            "type": "tasks",
            "attributes": {
                "name": "Brunch dreamcatcher wolf ennui freegan.",
                "complete": true
            }
        }
    ],
    "jsonapi": {
        "version": "1.0"
    }
}
```

### Tasks

#### All Tasks

A sample of all tasks from route `localhost:4517/tasks`. The api data actually has 100 tasks (10 per user).

```
{
    "data": [
        {
            "id": "14",
            "type": "tasks",
            "attributes": {
                "name": "Deep v tumblr sartorial ethical photo booth.",
                "complete": true,
                "priority": true,
                "user_id": 8
            },
            "relationships": {
                "user": {
                    "meta": {
                        "included": false
                    }
                }
            }
        },
        {
            "id": "15",
            "type": "tasks",
            "attributes": {
                "name": "Godard sustainable pug lumbersexual tilde kickstarter ennui.",
                "complete": false,
                "priority": true,
                "user_id": 8
            },
            "relationships": {
                "user": {
                    "meta": {
                        "included": false
                    }
                }
            }
        },
        {
            "id": "16",
            "type": "tasks",
            "attributes": {
                "name": "Messenger bag muggle magic you probably haven't heard of them tofu trust fund fashion axe art party put a bird on it sartorial.",
                "complete": true,
                "priority": true,
                "user_id": 8
            },
            "relationships": {
                "user": {
                    "meta": {
                        "included": false
                    }
                }
            }
        }
    ],
    "jsonapi": {
        "version": "1.0"
    }
}
```

#### Single Task

Sample data of a single task via route `localhost:4517/tasks/80`.

```
{
  "data": {
    "id": "80",
    "type": "tasks",
    "attributes": {
      "name": "Vhs ramps dreamcatcher direct trade.",
      "complete": true,
      "priority": true,
      "user_id": 14
    },
    "relationships": {
      "user": {
        "meta": {
          "included": false
        }
      }
    }
  },
  "jsonapi": {
    "version": "1.0"
  }
}
```

