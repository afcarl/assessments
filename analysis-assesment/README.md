## Analysis Assessment

The data in this test is from a fictional company, FutureHome, that produces futuristic home automation products. For this analysis assessment, please use the database called `futurehome` or see the csv dumps of the data in the `CSVs` folder. This assessment can be completed in any combination of python, sql, and/or excel. FutureHome sells their devices in a number of different sales channels. Customers may buy one or many of their devices.  FutureHome is interested in understanding their customers’ behaviors and has been collecting data on various aspects of their business. They are particularly interested in understanding the value of their customer segments and how discounting adds to their business. Below is a series of inquiries FutureHome has submitted to you to help them analyze and understand their business.

Please submit a written answer for each question that is supported by your analysis and represented in a visualization to be presented to FutureHome. In addition to the written report, please submit the analysis process (sql, python code, or excel workbooks) used to answer the questions in a separate document (text documents or ipython notebooks are fine for code). Successful write-ups should include both text and visualizations and be professionally presentable. Write-ups should be brief, but not more brief than is necessary to provide a complete explanation. A good writeup will provide a clear takeaway, offer concise support for that take-away with clear text and visuals, and be of sound logic and thoughtful approach. 

The schema for the database and connection instructions are copied below the questions.


__Question 1:__ Is coupon usage usage increasing or decreasing on Status Indicator products?  In addition to any visualizations you choose to provide, please quantify your results in numerical terms.

__Question 2:__ FutureHome is looking to increase repeat customers. Are there products that appear to encourage further sales?

__Question 3:__ FutureHome has identified three segments that are important to their business.  FutureHome wants to provide the most valuable segment [to put them in a segment] with a coupon to encourage continued loyalty to their brand. Create the following three customer segments and decide which segment is the most valuable.  The best answers will give an explanation (brief and thoughtful) of how value is judged between the segments.
- customers who have bought at least one item from Best Buy
- customers who own at least one ‘Status Indicator Sm’ device
- customers who have made at least one holiday purchase (a purchase in Oct, Nov, or Dec)

__Question 4:__ In a follow up request to the work you’ve done so far, FutureHome is eager to understand the ideal coupon.  Provide a written response, no coding necessary, explaining what data in the database is useful in illuminating this line of inquiry and what additional data would be helpful to answer this question.  The best answers should be brief but detailed enough to convey the logic of the approach to answer FutureHome’s inquiry.

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
