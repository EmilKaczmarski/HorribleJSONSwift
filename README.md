# HorribleJSONSwift
# JSON Decoding
# swift
Parsing JSONs that are nightmares 

Imagine that u have to decode JSON that has integer keys.

In JSON like in https://api.nasa.gov/insight_weather/?feedtype=json&api_key=DEMO_KEY
we have data which looks like that:

"""
{
  "489": {
    "AT": {
      "av": -54.566,
      "ct": 146337,
      "mn": -93.452,
      "mx": -6.507
    },
    ...
"""

and it represents current weather on Mars.
In enum file we have sample of solution that translates string to struct names:

struct CodingKeys: CodingKey {
        case one = "489"
        case two = "490"
        ...

and this would be fine, but in our JSON keys are sols from beggining of mission InSight (https://en.wikipedia.org/wiki/InSight), so they change everyday. Solution to that problem is in file Struct and to solve this problem we download keys in first request and then put them into array "SolsModel.solKeys". In second request we use keys from array and change them into struct names and finally we can download proper data.
