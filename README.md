# SQL-basics final work
<img src="https://user-images.githubusercontent.com/87437166/177791046-3a2fadca-8e04-4f81-be6b-07912bd7b940.png" width=150/>
The database for audiotechnics shop named The Vinyl Wine

![project_ERD](https://user-images.githubusercontent.com/87437166/169364080-dd3796d3-b46a-4340-b19c-482eef2c50f5.png)

 1. Implemented Triggers:
- Adds 3 steps ("in payment", "packing", "in delivery") to `orders_steps` after new line in `orders` table (read: customer placed order);
- Calculates the order cost after a product is added to the `orders_products`.
 2. Used Functions:
- Calculates the cost of item multiplied by amount from `order_products`
  
3. Tables description:
- `product` helds the product detaield description;
- `prod_categories` currently only 4;
- `inventory` helds the data about the products stored in different shops;
- *other tables* the names are created with less creativity but more readability.

4. Views:
- `customers_purchase_data` - top 5 customers based on summary orders cost;
- `most_required_prods` - top 5 sold products;
- `sales_by_store` - -//-;
- `current_product_inventory` - -//-;
- `average_delivery_time` - -//-.
 
5. **Future modifications:** 
- [ ] Calculations performed with triggers should better be realized via framework isntead of database in order to optimize resources;
- [ ] Add indexratio upon `orders_steps` table to increase the access speed;
- [ ] Optimize frequently called requests.
