-- 5 - Quais são os desenvolvedores que possuir maior quantidade de jogos ? --
select count(developer) as M, developer from steam 
group by developer
order by M desc
limit 8;

-- 6 - Quais são os principais jogos fps ? --
select steamspy_tag_data.appid, steam.name, steamspy_tag_data.fps
from steamspy_tag_data
join steam on steam.appid = steamspy_tag_data.appid
where steamspy_tag_data.fps <> 0
order by steamspy_tag_data.fps desc
limit 8
