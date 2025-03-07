[Variables]

; NOTE that Location Codes like USVA0944 or other types of codes are no longer supported.

; You must use location Latitude and Longitude.
; These values can be found for your location at:
; https://nominatim.openstreetmap.org/search.php?q=Your Address Text&format=json
; Where "Your Address Text" can be pretty much anything that can zero in on the location you want.
; https://nominatim.openstreetmap.org/search.php?q=Fort Hunt, Virginia&format=json
; https://nominatim.openstreetmap.org/search.php?q=22308&format=json
; https://nominatim.openstreetmap.org/search.php?q=The White House, Washington D.C.&format=json
; Then copy the lat: and lon: values from that site and paste them below.

; You can get it from Google Maps www.google.com/maps/	Latitude / Longitude

Latitude=-23.550520
Longitude=-46.633308

; Language used for string values returned in the data.
; If another language is desired the correct code can be found at:
; https://admin.rainmeter.net/LanguageCodes.php
; For example, French as used in France would be Language=fr-FR

Language=en-US

; Units of measure. This must be one of the following lower case letters:
; e		This is "Imperial", using Fahrenheit for temperatures.
; m		This is "Metric", using Celsius for temperatures.
; h		This is "Hybrid", used primarily in the UK. Celsius for temperatures, but miles for distances.

Units=m

; How often to update the weather information. Default and recommended is 600, which would be 10 minutes.

UpdateRate=600

; Date and time formats you desire.
; See https://docs.rainmeter.net/manual/measures/time/#FormatCodes 
; For formatting codes to use.

DateFormat=%A, %B %#d, %Y
TimeFormat=%#I:%M %p

; Don't change any below here.

APIKey=e1f10a1e78da46f5b10a1e78da96f525

CommonSubstitute='"':"","^null$":"","\\u002F":"/","\\u005C":"\","\\u003C":"<","\\u003E":">"
URLSite=https://api.weather.com/v3/aggcommon/v3-wx-observations-current;v3-wx-forecast-daily-15day;v3alertsHeadlines;v3-location-point?format=json&geocode=#Latitude#,#Longitude#&units=#Units#&language=#Language#&apiKey=#APIKey#
