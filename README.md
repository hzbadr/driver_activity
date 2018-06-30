# Docs

 start server
 ./bin/rails c -p 3002

#### Request
  GET
  http://localhost:3002/daily_activities?driver_id=1&day=2018-06-28

  day should be in the format YYYY-MM-DD

#### Response
  [
    {
      "from": "16:56",
      "to": "17:56",
      "activity": "Repairing",
      "duration": "01:00"
    },
    {
      "from": "18:06",
      "to": "21:06",
      "activity": "Cultivating",
      "duration": "03:00"
    },
    {
      "from": "21:06",
      "to": "22:36",
      "activity": "Driving",
      "duration": "01:30"
    }
  ]