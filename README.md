# Data Science Intern - Summer 2022


## Question 1:

 Given some sample data, write a program to answer the following: (link to data set here https://docs.google.com/spreadsheets/d/16i38oonuX1y1g7C_UAmiK9GkY7cS-64DfiDMNiR41LM/edit#gid=0)
 
 On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.

   - <b>=>> While calculating AOV value, for total orders instead of taking actual total number of orders, the total count of rows under the total_orders columns must have been taken i.e,</b>

   aov = total_revenue / dataset['order_amount'].count(), which will give us $3145.92.

   - =>> If we analyse the descibe function results then we will see that there are a lot of discrepancies in the data that have increased the said AOV.

   - <b>=>> The minimum value is $90 and the maximum value is $704000. The difference between the maximum and minimum values is huge for a sneaker selling shop. Some shops have sold only 1 whereas some have sold a lot such that the contribution from those shops alone is incredibly high and has affected the calculation of AOV value.</b>

   - =>> The median value of $284 supports our above statement.

   - =>> The huge difference between (minimum and maximum) and (median and maximum) value shows that the there are some outliers in our data that is affecting our calculation.

   - <b>=>> The Standard deviation in the initial calculation is 41282.54 which is very large and signifies that on average , the values vary by 41,282.54 from the mean. This indicates that taking the mean for AOV as per the question is not correct.</b>

   - =>> Our generally calculated Standard Deviation for a mean value of $357.92 is 13956.79 which is still a large value. This indicates that on average the values deviate by 13956.79 from the mean or AOV.

   - <b>=>> So our AOV of $357.92 is also not accurrate and we need to consider some other methods that will eliminate the outliers.</b>

   - =>> A better way to evaluate this dataset will be by using a method that is more robust to outliers, such as using the modal value as AOV or the median of the dataset or the median of the Interquartile Range of the dataset (middle 50%). However as there are multiple orders of the same item palced by some buyers we will use mean but of the Interquartile Range dataset.


2. What metric would you report for this dataset?
   
   <b>=>> Here I will consider the Interquartile range of the dataset to calculate the AOV. This is because by considering this Interquartile range I will be able to avoid the outliers as this will drop the very high and very low values from being considered for calculation. Only those values that make up the middle 50% of the dataset will be taken under consideration.

   =>> And finally I will calculate the AOV based on the new Interquartile Range dataset by the fomula metioned above i.e.</b>

   - AOV = Total Revenue / Total Orders Placed

3. What is its value?

   <b>=>> The new calculated Average Order Value (AOV) is $149.5</b>





## Question 2: 

For this question you’ll need to use SQL. Follow this link (https://www.w3schools.com/SQL/TRYSQL.ASP?FILENAME=TRYSQL_SELECT_ALL) to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

1. How many orders were shipped by Speedy Express in total?\
2. What is the last name of the employee with the most orders?\
3. What product was ordered the most by customers in Germany?\

## Answers: 

1. How many orders were shipped by Speedy Express in total? 
   =>> **54**

2. What is the last name of the employee with the most orders?

   =>> **Employee: Peacock**\
   **Most orders: 40**

3. What product was ordered the most by customers in Germany? <br/>

   =>> **Boston Crab Meat**\
    **Number of orders : 160**
   
