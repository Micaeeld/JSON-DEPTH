
-- JSON_DEPTH --

select JSON_DEPTH ('{}'); #1
select JSON_DEPTH ('{"nome": "João"}'); #2
select JSON_DEPTH ('{"nome": "João", "filho":{}}'); #2
select JSON_DEPTH ('{"nome": "João", "filho":{"nome": "Pedro"}}'); #3
select JSON_DEPTH ('{"nome": "João", "filho":{"nome": "Pedro", "neto": {"nome":"Julio"}}}'); #4
select JSON_DEPTH(doc) from countryinfo; #3
select doc from countryinfo where JSON_DEPTH(doc) <> 3;
