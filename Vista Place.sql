save point States;

CREATE OR REPLACE VIEW Place_City_State AS
 SELECT  place.name_place, city.name_city ,  states.name_state  FROM place 
  join city 
  on place.city_place_id  = city.id_city
  right join states
  on city.state_city_id = states.id_state 
  where place.name_place is not null
  order by place.name_place;
  
  select * from Place_City_State;