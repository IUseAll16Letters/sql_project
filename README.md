# geekbrains SQL-basis result work
The database for audiotechnics shop

![project_ERD](https://user-images.githubusercontent.com/87437166/169364080-dd3796d3-b46a-4340-b19c-482eef2c50f5.png)

**2 * Triggers**:
**a.** adds 4 steps lines to `orders_steps` after an order added to the `orders` (read: order is placed);
**b.** calculates the order cost after a product is added to the `orders_products`
**1 * Function**:
**a.** simply calculates the cost of item * amount from `order_products`
  
**tables description:**
`product` helds the product detaield description
`prod_categories` currently only 4
`inventory` helds the data about the products stored in different shops
*other tables* the names are created with less creativity but more readability

**views:**
  `customers_purchase_data` - top 5 buyers
  `most_required_prods` - top 5 sold products
  `sales_by_store` - -//-
  `current_product_inventory` - -//-
  `average_delivery_time` - -//-
 
 
 **Future modifications:**
 should add indexatio upon `orders_steps` table to increase the access speed
