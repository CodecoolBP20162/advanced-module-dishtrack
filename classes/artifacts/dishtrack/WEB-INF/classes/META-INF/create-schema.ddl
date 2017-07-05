create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
create table Allergen (allergen_id  bigserial not null, name varchar(255), primary key (allergen_id))
create table cart_items (item_id  bigserial not null, quantity int4, cart_id int8, product_product_id int8, primary key (item_id))
create table Ingredient (ingredient_id  bigserial not null, name varchar(255), primary key (ingredient_id))
create table ordered_items (id  bigserial not null, quantity int4, order_id int8, product_id int8, primary key (id))
create table orders (order_id  bigserial not null, adminComment varchar(255), customerComment varchar(255), date int8, deliveryStatus varchar(255), paymentMethod int4, paymentStatus boolean, totalPrice varchar(255), courier_user_id int8, customer_user_id int8, primary key (order_id))
create table products (product_id  bigserial not null, category int4, description varchar(255), product_name varchar(255), picture varchar(255), restaurant_id int8, primary key (product_id))
create table products_Allergen (products_product_id int8 not null, allergens_allergen_id int8 not null, primary key (products_product_id, allergens_allergen_id))
create table products_Ingredient (products_product_id int8 not null, ingredients_ingredient_id int8 not null, primary key (products_product_id, ingredients_ingredient_id))
create table Restaurant (restaurant_id  bigserial not null, name varchar(255), primary key (restaurant_id))
create table reviews (review_id  bigserial not null, review varchar(255), user_id int8, primary key (review_id))
create table shopping_cart (id  bigserial not null, customer_user_id int8, primary key (id))
create table users (user_id  bigserial not null, address varchar(255), city varchar(255), discount int4, email varchar(255), firstName varchar(255), lastName varchar(255), password varchar(255), phone varchar(255), role varchar(255), username varchar(255), zip varchar(255), cart_id int8, restaurant_id int8, primary key (user_id))
alter table cart_items add constraint FKkwkexjephx1g1xu4e6x99qq5m foreign key (cart_id) references shopping_cart
alter table cart_items add constraint FK116aqselpapcaodu1fqjqvex9 foreign key (product_product_id) references products
alter table ordered_items add constraint FKha3q3tsqr7gri0mbp14hc5mkq foreign key (order_id) references orders
alter table ordered_items add constraint FKfa3kjy2vryuipqdkdudchof2g foreign key (product_id) references products
alter table orders add constraint FKjipck89ckqurjs19gbk3sr705 foreign key (courier_user_id) references users
alter table orders add constraint FKnr2jtai5a4jbute3j4rh49ggi foreign key (customer_user_id) references users
alter table products add constraint FKcbj2lihovvly33ffdwwcn9i5 foreign key (restaurant_id) references Restaurant
alter table products_Allergen add constraint FK5awsldx1am8ahw60apipbqsiw foreign key (allergens_allergen_id) references Allergen
alter table products_Allergen add constraint FK9ehyoefvb5wt6t53437ilhedd foreign key (products_product_id) references products
alter table products_Ingredient add constraint FK4h17ni00p3a8ylyvj9ngbevrb foreign key (ingredients_ingredient_id) references Ingredient
alter table products_Ingredient add constraint FKp0d5hpug7us3bqq6g79lo1ok9 foreign key (products_product_id) references products
alter table reviews add constraint FKcgy7qjc1r99dp117y9en6lxye foreign key (user_id) references users
alter table reviews add constraint FK7kyn87xmnnsueav0vm8xg0916 foreign key (review_id) references Restaurant
alter table shopping_cart add constraint FK1yqoo0cwupti6y5qpn5rxqp9a foreign key (customer_user_id) references users
alter table users add constraint FK6jdrni2j64vqsvgjm8ub789pk foreign key (cart_id) references shopping_cart
alter table users add constraint FK30s9uvusyumpew6b4d46gcdqj foreign key (restaurant_id) references Restaurant
