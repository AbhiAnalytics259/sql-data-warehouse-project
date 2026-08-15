### Data  Directory  for Gold Layer


Overview

The Gold Layer is the business-level data representation structured to support analytical and reporting use cases.it consists of dimension
 **tables**  and  **fact tables**  for specific business metrics.
 
 --------------------------------------------------------------------------------------------------------------------------------------------------------

  **1.gold.dim_customers**

  - *Purpose:* Stores customer details enriched with demographic and geographic data.
  - *columns:*
    
    |Column Name| Data Type| Description|
    |-----------|----------|------------|
    |customer_key | INT| Surrogate key unique identifying each customers record in the dimension table. |
    |customer_id| INT| Unique numerical identifier assigned to each customer. |
    |customer_number| NVARCHAR(50)| Alphanumeric identifier representing the customer, used for tracking and refrencing.|
    |first_name|  NVARCHAR(50)| The customer's first name, as recorded in the system.|
    |last_name| NVARCHAR(50)| The customer's last name or family name.|
    |country| NVARCHAR(50)| The country of residence for the customer(e.g. 'Australia').|
    |martial_status| NVARCHAR(50)| The martial status of the customer(e.g. 'Married', 'Single').|
    |gender| NVARCHAR(50)| The gender of the customer(e.g. 'Male', 'Female', 'n/a'). |
    |birthdate| DATE| The date of birth of customer, formatted as YYYY-MM-DD (e.g. 1971-10-06). |
    |create_date| DATE|  The date and time when the customer record was created in the system. |
--------------------------------------------------------------------------------------------------------------------------------------------------------------

  **2.gold.dim_products**
    
