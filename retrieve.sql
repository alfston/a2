-- 1
/* a
SELECT persons.id, persons.firstName, persons.lastName, persons.username, persons.password, persons.email
FROM persons
INNER JOIN developers ON persons.id = developers.id
*/
/* b
SELECT persons.id, persons.firstName, persons.lastName, persons.username, persons.password, persons.email
FROM persons
INNER JOIN developers ON persons.id = developers.id
WHERE developers.id = 34
*/
/* c
SELECT persons.id, persons.firstName, persons.lastName, persons.username, persons.password, persons.email
FROM persons
INNER JOIN website_roles ON persons.id = website_roles.developer_id
INNER JOIN websites ON websites.id = website_roles.website_id
WHERE websites.name= "Twitter"
AND (website_roles.role = "owner" OR website_roles.role = "admin")
*/
/* d
SELECT persons.id, persons.firstName, persons.lastName, persons.username, persons.password, persons.email, pages.title
FROM pages, persons
INNER JOIN page_role ON persons.id = page_role.developer_id
WHERE page_role.role = "reviewer"
AND pages.id = page_role.page_id
AND pages.visits < 300000
*/
/* e
SELECT persons.id, persons.firstName, persons.lastName, persons.username, persons.password, persons.email
FROM pages, persons
INNER JOIN page_role ON persons.id = page_role.developer_id
WHERE page_role.role = "writer"
AND pages.title = "Home"
AND pages.id = page_role.page_id
*/

-- 2
/* a 
SELECT websites.id, websites.name, websites.description, websites.updated, min(websites.visits)
FROM websites
*/
/* b

SELECT websites.name
FROM websites
WHERE websites.id = 678
*/
/* c
SELECT websites.name, widgets.dtype
FROM persons
INNER JOIN page_role ON persons.id = page_role.developer_id
INNER JOIN pages ON page_role.page_id = pages.id
INNER JOIN websites on pages.website_id = websites.id
INNER JOIN widgets ON pages.id = widgets.page_id
WHERE widgets.dtype = "youtube"
AND page_role.role = "reviewer"
AND persons.firstName = "Bob"
*/
/* d
SELECT persons.firstName, websites.name, website_roles.role
FROM persons
INNER JOIN website_roles ON persons.id = website_roles.developer_id
INNER JOIN websites on website_roles.website_id = websites.id
WHERE persons.firstName = "alice"
AND website_roles.role = "Owner"
*/
/* e
SELECT websites.name
FROM persons
INNER JOIN website_roles ON persons.id = website_roles.developer_id
INNER JOIN websites ON website_roles.website_id = websites.id
WHERE website_roles.role = "admin"
AND persons.firstName = "charlie"
AND websites.visits > 6000000
*/
-- 3 
/* a
SELECT pages.title, max(pages.visits) as "page visits"
FROM pages
WHERE pages.visits = (select max(pages.visits) from pages)
*/
/* b 

SELECT pages.title
FROM pages
WHERE pages.id = 234
*/
/* c
SELECT persons.firstName, pages.title, page_role.role
FROM persons
INNER JOIN page_role ON persons.id = page_role.developer_id
INNER JOIN pages ON page_role.page_id = pages.id
WHERE persons.firstName = "alice"
AND page_role.role = "Editor"
*/
/* d
SELECT sum(pages.visits), websites.name
FROM Websites
INNER JOIN pages ON websites.id = pages.website_id
WHERE websites.name = "CNET"
*/
/* e
SELECT avg(pages.visits), websites.name
FROM Websites
INNER JOIN pages ON websites.id = pages.website_id
WHERE websites.name = "Wikipedia"
*/

-- 4
/* a
SELECT widgets.name
FROM pages
INNER JOIN websites ON pages.website_id = websites.id
INNER JOIN widgets on pages.id = widgets.page_id
WHERE pages.title = "Home"
AND websites.name = "CNET"
*/
/* b
SELECT widgets.name, widgets.dtype
FROM pages
INNER JOIN websites ON pages.website_id = websites.id
INNER JOIN widgets on pages.id = widgets.page_id
WHERE widgets.dtype = "youtube"
AND websites.name = "CNN"
*/
/* c

SELECT widgets.name, widgets.dtype
FROM Persons, pages
INNER JOIN widgets ON pages.id = widgets.page_id
INNER JOIN page_role ON pages.id = page_role.page_id
WHERE widgets.dtype = "image"
AND persons.firstName = "Alice"
AND page_role.role = "reviewer"
*/
/* d
SELECT widgets.name
FROM pages
INNER JOIN widgets ON pages.id = widgets.page_id
INNER JOIN websites ON pages.website_id = websites.id
WHERE websites.name = "Wikipedia"
*/

-- 5
/* a
SELECT websites.name
FROM persons
INNER JOIN website_priviledges ON persons.id = website_priviledges.developer_id
INNER JOIN websites ON website_priviledges.website_id = websites.id
WHERE persons.firstName = "Bob"
AND website_priviledges.priviledge = "delete"
group by websites.name
*/
/* b
SELECT pages.title
FROM persons
INNER JOIN page_priviledges ON persons.id = page_priviledges.developer_id
INNER JOIN pages ON page_priviledges.page_id = pages.id
WHERE persons.firstName = "Charlie"
AND page_priviledges.priviledge = "create"
group by pages.title
*/
