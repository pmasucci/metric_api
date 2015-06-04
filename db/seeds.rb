# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
run_log = Log.create!(name: "Running")
sleep_log = Log.create!(name: "Sleeping")
beer_log = Log.create!(name: "Drinking")

sleep_log.log_entries.create!(data: {
                                    hours: 8,
                                    "date": 1.day.ago
                                  })

sleep_log.log_entries.create!(data: {
                                    "hours": 7,
                                    "date": 2.day.ago
                                  })

sleep_log.log_entries.create!(data: {
                                    "hours": 9,
                                    "date": 3.day.ago
                                  })

sleep_log.log_entries.create!(data: {
                                    "hours": 5,
                                    "date": 4.day.ago
                                  })

run_log.log_entries.create!(data: {
                                    "miles": 1,
                                    "time": 6
                                  })

run_log.log_entries.create!(data: {
                                    "miles": 2,
                                    "time": 15
                                  })

run_log.log_entries.create!(data: {
                                    "miles": 4,
                                    "time": 40
                                  })

beer_log.log_entries.create!(data: {
                                      "beers": 3,
                                      "date": 1.day.ago
                                    })

beer_log.log_entries.create!(data: {
                                      "beers": 0,
                                      "date": 2.day.ago
                                    })

beer_log.log_entries.create!(data: {
                                      "beers": 1,
                                      "date": 3.day.ago
                                    })

beer_log.log_entries.create!(data: {
                                      "beers": 6,
                                      "date": 4.day.ago
                                    })

# run_log.representations.create!(chart_type: "bar",
#                                 structure: {
#                                   "x":
#                                   })
