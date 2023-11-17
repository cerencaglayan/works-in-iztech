/*
products
*/
db.products.insertMany([
  {
    product_id: 1,
    name: "Smartphone",
    description: "High-end smartphone with amazing features.",
    price: 699.99,
    category: "Electronics",
    inventory: 100,
    images: ["image1.jpg", "image2.jpg"],
  },
  {
    product_id: 2,
    name: "Laptop",
    description: "Powerful laptop for work and gaming.",
    price: 1099.99,
    category: "Electronics",
    inventory: 50,
    images: ["image3.jpg", "image4.jpg"],
  },
  {
    product_id: 3,
    name: "Lipstick",
    description: "Great color for your daily makeup",
    price: 60.99,
    category: "Cosmetic",
    inventory: 50,
    images: ["image5.jpg", "image6.jpg"],
  },
  {
    product_id: 4,
    name: "Mascara",
    description:
      "Waterproof mascara that adds volume and length to your lashes.",
    price: 60.99,
    category: "Cosmetic",
    inventory: 50,
    images: ["image5.jpg", "image6.jpg"],
  },
  {
    product_id: 5,
    name: "Running Shoes",
    description:
      "High-performance running shoes with cushioned soles for a comfortable run. Designed for athletes and fitness enthusiasts.",
    price: 89.99,
    category: "Footwear",
    inventory: 30,
    images: ["running_shoes_blue.jpg", "running_shoes_black.jpg"],
  },
  {
    product_id: 6,
    name: "Vinyl Record - Jazz Classics",
    description:
      "Experience the golden age of jazz. Features iconic tracks by legendary jazz artists.",
    price: 29.99,
    category: "Music",
    inventory: 20,
    images: ["vinyl_record_jazz.jpg", "vinyl_record_cover.jpg"],
  },
]);
/*
    reviews
    */
db.reviews.insertMany([
  {
    review_id: 1,
    product_id: 1,
    customer_id: 101,
    rating: 4.5,
    review_text:
      "Great phone! It has an excellent camera and a long-lasting battery.",
    date: ISODate("2023-03-01T10:00:00Z"),
  },
  {
    review_id: 2,
    product_id: 2,
    customer_id: 101,
    rating: 4.7,
    review_text: "Impressive performance for the price. Highly recommended.",
    date: ISODate("2023-03-05T14:30:00Z"),
  },
  {
    review_id: 3,
    product_id: 3,
    customer_id: 103,
    rating: 4.3,
    review_text:
      "This lipstick has a beautiful color that is good for my daily makeup.",
    date: ISODate("2023-03-10T12:15:00Z"),
  },
  {
    review_id: 4,
    product_id: 4,
    customer_id: 104,
    rating: 4.6,
    review_text: "This mascara is great! I bought it for my girlfriend.",
    date: ISODate("2023-03-12T09:45:00Z"),
  },
  {
    review_id: 5,
    product_id: 5,
    customer_id: 105,
    rating: 4.8,
    review_text:
      "These running shoes provide excellent support and comfort during my workouts.",
    date: ISODate("2023-03-15T16:20:00Z"),
  },
  {
    review_id: 6,
    product_id: 6,
    customer_id: 102,
    rating: 4.9,
    review_text:
      "The jazz classics on this vinyl record take me back to a wonderful era in music history.",
    date: ISODate("2023-03-20T11:30:00Z"),
  },
]);
/*
    customers
    */
db.customers.insertMany([
  {
    customer_id: 101,
    first_name: "Robert",
    last_name: "Pattinson",
    email: "robert.pattinson@gmail.com",
    address: "123 Main St, London, United Kingdom",
    phone_number: "+1234567890",
    password: "twilight2008",
    orders: [1],
  },
  {
    customer_id: 102,
    first_name: "Mikael",
    last_name: "Stanne",
    email: "mikael.stanne@gmail.com",
    address: "456 Elm St, Gothenburg, Sweden",
    phone_number: "+9876543210",
    password: "marillion2004",
    orders: [5],
  },
  {
    customer_id: 103,
    first_name: "Margot",
    last_name: "Robbie",
    email: "margot.robbie@example.com",
    address: "789 Oak St, Queensland, Australia",
    phone_number: "+1122334455",
    password: "123barbie**",
    orders: [3],
  },
  {
    customer_id: 104,
    first_name: "Ryan",
    last_name: "Gosling",
    email: "ryan.gosling@gmail.com",
    address: "101 Pine St, Ontario, Canada",
    phone_number: "+9988776655",
    password: "mojodojocasahouse",
    orders: [4],
  },
  {
    customer_id: 105,
    first_name: "Emma",
    last_name: "Stone",
    email: "emma.stone@gmail..com",
    address: "333 Cedar St, Arizona, America",
    phone_number: "+1122993344",
    password: "lalaland!!*1",
    orders: [2],
  },
  {
    customer_id: 106,
    first_name: "Henry",
    last_name: "Cavill",
    email: "henry.cavill@gmail.com",
    address: "555 Walnut St, Saint Helier, Jersey",
    phone_number: "+1122335566",
    password: "cryptoniteMan++",
    orders: [6],
  },
  {
    customer_id: 107,
    first_name: "Firdevs",
    last_name: "Yöreoğlu",
    email: "firdevs.yoreoglu@gmail.com",
    address:
      "12076 Sk, Hacıhüsrevoğulları Cad., Merkezefendi, Denizli, Türkiye",
    phone_number: "+905324850283",
    password: "aptallıketme2010",
    orders: [7],
  },
  {
    customer_id: 108,
    first_name: "Hürrem",
    last_name: "Sultan",
    email: "hürrem.sultan@gmail.com",
    address: "Cankurtaran, 34122, Topkapi Palace, Istanbul, Turkey",
    phone_number: "+905417462957",
    password: "sülümanım1521",
    orders: [],
  },
]);
/*
    orders
    */
db.orders.insertMany([
  {
    order_id: 1,
    customer_id: 101,
    order_date: ISODate("2023-03-10T15:45:00Z"),
    items: [
      { product_id: 1, quantity: 2 },
      { product_id: 2, quantity: 1 },
    ],
    total_amount: 2499.97,
    order_status: "Shipped",
  },
  {
    order_id: 2,
    customer_id: 105,
    order_date: ISODate("2023-03-12T12:15:00Z"),
    items: [{ product_id: 2, quantity: 1 }],
    total_amount: 1099.99,
    order_status: "Delivered",
  },
  {
    order_id: 3,
    customer_id: 103,
    order_date: ISODate("2023-03-15T11:30:00Z"),
    items: [{ product_id: 3, quantity: 3 }],
    total_amount: 182.97,
    order_status: "Processing",
  },
  {
    order_id: 4,
    customer_id: 104,
    order_date: ISODate("2023-03-18T14:00:00Z"),
    items: [
      { product_id: 4, quantity: 2 },
      { product_id: 5, quantity: 1 },
    ],
    total_amount: 211.97,
    order_status: "Shipped",
  },
  {
    order_id: 5,
    customer_id: 102,
    order_date: ISODate("2023-03-20T09:30:00Z"),
    items: [{ product_id: 6, quantity: 1 }],
    total_amount: 29.99,
    order_status: "Delivered",
  },
  {
    order_id: 6,
    customer_id: 106,
    order_date: ISODate("2023-03-22T16:45:00Z"),
    items: [
      { product_id: 1, quantity: 1 },
      { product_id: 3, quantity: 2 },
    ],
    total_amount: 821.97,
    order_status: "Processing",
  },
  {
    order_id: 7,
    customer_id: 107,
    order_date: ISODate("2023-03-25T13:20:00Z"),
    items: [
      { product_id: 5, quantity: 1 },
      { product_id: 6, quantity: 1 },
    ],
    total_amount: 119.98,
    order_status: "Shipped",
  },
]);
/*
    payments
    */
db.payments.insertMany([
  {
    payment_id: 1,
    order_id: 1,
    payment_method: "Credit Card",
    transaction_date: ISODate("2023-03-10T15:45:00Z"),
    amount: 2499.97,
    status: "Paid",
  },
  {
    payment_id: 2,
    order_id: 2,
    payment_method: "PayPal",
    transaction_date: ISODate("2023-03-12T12:15:00Z"),
    amount: 1099.99,
    status: "Paid",
  },
  {
    payment_id: 3,
    order_id: 3,
    payment_method: "Debit Card",
    transaction_date: ISODate("2023-03-15T11:30:00Z"),
    amount: 182.97,
    status: "Pending",
  },
  {
    payment_id: 4,
    order_id: 4,
    payment_method: "Bank Transfer",
    transaction_date: ISODate("2023-03-18T14:00:00Z"),
    amount: 211.97,
    status: "Paid",
  },
  {
    payment_id: 5,
    order_id: 5,
    payment_method: "Credit Card",
    transaction_date: ISODate("2023-03-20T09:30:00Z"),
    amount: 29.99,
    status: "Paid",
  },
  {
    payment_id: 6,
    order_id: 6,
    payment_method: "PayPal",
    transaction_date: ISODate("2023-03-22T16:45:00Z"),
    amount: 821.97,
    status: "Pending",
  },
  {
    payment_id: 7,
    order_id: 7,
    payment_method: "Debit Card",
    transaction_date: ISODate("2023-03-25T13:20:00Z"),
    amount: 119.98,
    status: "Paid",
  },
]);
// Indexes
db.orders.createIndex({ order_date: 1 });
db.reviews.createIndex({ product_id: 1, rating: 1 });
db.products.createIndex({ category: 1 });

// Queries
db.customers.updateOne(
  { customer_id: 101 },
  { $set: { address: "456 New St, London, United Kingdom" } }
);
db.customers.updateOne(
  { customer_id: 103 },
  { $set: { password: "slipknot400" } }
);
db.orders.find({ order_date: { $lt: ISODate() } });
var startTime = new Date();
var result = db.orders
  .find({ order_date: { $lt: ISODate() } })
  .explain("executionStats");
var endTime = new Date();
var elapsedTime = endTime.getTime() - startTime.getTime();
print(
  "Before adding index - execution Time (Microseconds): " + elapsedTime * 1000
);
var specificRatingProducts = db.reviews
  .find({ rating: 4.5 })
  .map((review) => review.product_id);
var productsWithSpecificRating = db.products.find({
  product_id: { $in: specificRatingProducts },
});
var deletedProductId = 3;
var deletedProducts = db.products.findOneAndDelete({
  product_id: deletedProductId,
});
var checkDeletedProduct = db.products.findOne({ product_id: deletedProductId });
print(checkDeletedProduct ? "Product exists." : "Product is removed.");
// reviews should also be deleted with the id of deleted product.
db.reviews.deleteMany({ product_id: deletedProductId });
/*
    Additional Queries
    */
// Find Orders Shipped After a Certain Date
var shipDateThreshold = ISODate("2023-03-15T00:00:00Z");
db.orders.find({
  order_status: "Shipped",
  order_date: { $gt: shipDateThreshold },
});
// This query finds customers who have placed at least one order.
db.customers.find({ orders: { $exists: true, $ne: [] } });
// List Products with Low Inventory
var lowInventoryThreshold = 50;
db.products.find({ inventory: { $lt: lowInventoryThreshold } });
// List products in "Electronics" category
var electronicsProducts = db.products.find({ category: "Electronics" });
print("Electronics Products:");
while (electronicsProducts.hasNext()) {
  printjson(electronicsProducts.next());
}
