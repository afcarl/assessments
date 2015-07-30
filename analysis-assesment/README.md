## Analysis Assessment

The data in this test is from a fictional company that produces futuristic home automation products. They sell their devices in a number of different sales channels. Customers may buy one or many of their devices. Please submit a written answer for each question, as well as the code (sql or python only) used to answer the questions in a separate document (text documents or ipython notebooks are fine).

Write-ups should include both text and visualizations. Writeups should be brief, but not more brief than is necessary to provide a complete explanation. A good writeup will provide a clear takeaway, offer concise support for that takeaway with clear text and visuals, and be of sound logic and thoughtful approach.

__Question 1:__ Create the following three customer segments and decide which segment is the most valuable.
- customers who have bought at least one item from Best Buy
- customers who own at least one ‘Status Indicator Sm’ device
- customers who have made at least one holiday purchase (a purchase in Oct, Nov, or Dec)

__Question 2:__ In what month did users who have had a purchase in the ‘Online’ channel register the most music services? What do the top months have in common?

__Question 3:__ Is coupon usage increasing or decreasing on Status Indicator products?

__Question 4:__ What products are commonly owned together?

__Question 5:__ Do people who make a first purchase during the holiday season (Oct, Nov, Dec) show different purchasing behavior than people who make a first purchase not during the holiday season?


#### Tables

`futurehome.devices`

| Name | Type | Description | Keys |
| ----- |-----|-----| -----|
|item_id |integer |ID for type of device |`products_lookup.item_id`|
|user_id|integer|The ID of the user who registered the device|`actions.user_id`|
|time_stamp|timestamp|The time when the device was registered||
|item_registration_id|varchar|Unique ID of this registered device|`actions.item_registration_id`|
|coupon_code|varchar|Coupon code used for purchase or NULL if no coupon used||
|dist_channel|varchar|Sales channel where the device was purchased|||

`futurehome.actions`

| Name | Type | Description | Keys |
| ----- |-----|-----| -----|
|item_price|integer|Price of the device (if applicable)||
|user_id|integer|The ID of the user who registered the device|`devices.user_id`|
|item_name|varchar|Name of the device|`products_lookup.item_name`|
|item_registration_id|varchar|Unique ID of this registered device||
|action_type|varchar|The type of action||
|time_stamp|timestamp|Time when the action happened||
|dealer|varchar|The dealer who sold this device (if action is a purchase)|||

`futurehome.products_lookup`

| Name | Type | Description | Keys |
| ----- |-----|-----| -----|
|item_id|integer|ID for type of device|`devices.item_id`|
|item_name|varchar|Name of the device|||
