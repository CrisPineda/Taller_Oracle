save point Anemity_place;

CREATE OR REPLACE VIEW Place_Amenity AS
 SELECT  place.id_place , place.name_place, anemity.name_anemity  FROM place 
  join place_anemity 
  on place.id_place = place_anemity.place_anemityplace_id
  right join anemity
  on place_anemity.anemity_anemityplace_id = anemity.id_anemity
  where place.name_place is not null
  order by place.name_place;
  
    select * from Place_Amenity;