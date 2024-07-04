SELECT country, category, sum(amount) as "Total_sales"
from public."FactSales" as f
left join public.softcart_dimcountry
on f.countryid = softcart_dimcountry.country_id
left join softcart_dimcategory
on f.categoryid = softcart_dimcategory.category_id
group by grouping sets(country, category)
order by  category, country
