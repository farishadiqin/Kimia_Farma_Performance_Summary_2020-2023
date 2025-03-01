SELECT * FROM `kimia-farma-intern.kimia_farma.final_transaction` LIMIT 100

SELECT * FROM `kimia-farma-intern.kimia_farma.inventory` LIMIT 100

SELECT * FROM `kimia-farma-intern.kimia_farma.kantor_cabang` LIMIT 100

SELECT * FROM `kimia-farma-intern.kimia_farma.product` LIMIT 100

SELECT 
    t1.transaction_id,
    t1.date,
    t1.branch_id,
    t3.branch_name,
    t3.kota,
    t3.provinsi,
    t3.rating,
    t1.customer_name,
    t1.product_id,
    t2.product_name,
    t1.price,
    t1.discount_percentage,
FROM 
    `kimia-farma-intern.kimia_farma.final_transaction` as t1
LEFT JOIN 
    `kimia-farma-intern.kimia_farma.inventory` as t2 ON t1.branch_id = t2.branch_id
LEFT JOIN 
    `kimia-farma-intern.kimia_farma.kantor_cabang` as t3 ON t1.branch_id = t3.branch_id;
    
SELECT * FROM `kimia-farma-intern.kimia_farma.kimia_farma_gabungan` LIMIT 100;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
RENAME COLUMN rating TO rating_cabang;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
ADD COLUMN nett_sales DECIMAL(10, 2);

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
ALTER COLUMN nett_sales SET DATA TYPE FLOAT64;

UPDATE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
SET nett_sales = price - (price * discount_percentage)
WHERE 1=1;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
ADD COLUMN persentase_gross_laba FLOAT64;

UPDATE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
SET persentase_gross_laba = 
    CASE
        WHEN price <= 50000 THEN 10
        WHEN price > 50000 AND price <= 100000 THEN 15
        WHEN price > 100000 AND price <= 300000 THEN 20
        WHEN price > 300000 AND price <= 500000 THEN 25
        WHEN price > 500000 THEN 30
    END
WHERE 1=1;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
ADD COLUMN nett_profit FLOAT64;

UPDATE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
SET nett_profit = (nett_sales * persentase_gross_laba / 100)
WHERE 1=1;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
ADD COLUMN rating FLOAT64;

UPDATE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan` AS kfg
SET rating = (
    SELECT rating
    FROM `kimia-farma-intern.kimia_farma.final_transaction` AS ft
    WHERE ft.transaction_id = kfg.transaction_id)
WHERE 1=1;

ALTER TABLE `kimia-farma-intern.kimia_farma.kimia_farma_gabungan`
RENAME COLUMN rating TO rating_transaksi;
