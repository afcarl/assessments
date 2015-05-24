## Employees

The data in this test represents a fictional company and its organizational structure. Each answer should require a single SQL query.

__Question 1:__ How many full time and part time employees currently work at the company?

__Question 2:__ As part of a green initiative, the company is going to award a one time bonus to current employees that are taking alternative transportation to work (i.e. do not have a parking spot assigned).  The bonus will be issued only to employees making under 75k per year. Please retrieve a list of all employees who should receive this bonus.

__Question 3:__ What are the average salaries by title?

__Question 4:__ What is the total current salary liability for the entire company?

__Question 5:__ For every manager, how many direct and indirect reports do they have?  For clarity, an indirect report is like a grandchild or great-grandchild.


#### Tables

`employees.titles`

| Name | Type | Keys |
| -----|----- | -----|
|title_id| int|`employees.title_id`|
|title| varchar | ||


`employees.emp_status`

| Name | Type | Keys |
| -----|----- | -----|
|status_id| int |`employees.status_id`|
|status | varchar|||


`employees.employees`

| Name | Type | Keys |
| -----|----- | -----|
|employee_id |int |`parking.employee_id`, `report_structure.employee_id`, `report_structure.mgr_employee_id`, `emp_salaries.employee_id`|
|name | varchar||
|title_id| int|`titles.title_id`|
|status_id| int|`emp_status.status_id`||


`employees.parking`

| Name | Type | Keys |
| -----|----- | -----|
|employee_id | int |`employees.employee_id`|
|slot | varchar |||


`employees.report_structure`

| Name | Type | Keys |
| -----|----- | -----|
|report_id | int ||
|employee_id | int |`employees.employee_id`|
|mgr_employee_id | int |`employees.employee_id`||


`employees.emp_salaries`

| Name | Type | Keys |
| -----|----- | -----|
|salary_id| int||
|employee_id| int|`employees.employee_id`|
|salary| float|||
