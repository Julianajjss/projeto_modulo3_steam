-- 7 - Quais são os 30 jogos mais reproduzido segundo a steamspy--
select appid, name, average_playtime from steam
order by average_playtime desc
limit 8;

-- 8 - Quais são os 10 jogos mais caro da plataforma steam--
select name, price from steam
order by price desc limit 8
