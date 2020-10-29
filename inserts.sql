--  1. 
-- UPDATE `a2`.`phones` SET `phone` = '333-444-5555' WHERE (`id` = '4');

-- 2.
/* 
UPDATE `a2`.`widgets` SET `order` = '3' WHERE (`id` = '345');
UPDATE `a2`.`widgets` SET `order` = '1' WHERE (`id` = '456');
UPDATE `a2`.`widgets` SET `order` = '2' WHERE (`id` = '567');
*/

-- 3. 
/*
UPDATE a2.pages 
SET title = concat("CNET - ", title) 
WHERE (pages.website_id = 567)
*/

-- 4.
/*
UPDATE `a2`.`page_role` SET `role` = 'writer' WHERE (`id` = '2');
UPDATE `a2`.`page_role` SET `role` = 'reviewer' WHERE (`id` = '3');
*/
