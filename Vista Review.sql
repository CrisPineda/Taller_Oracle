save point Antes;

CREATE OR REPLACE VIEW Review_Uusario AS
 SELECT  review.id_review , usuarios.frist_name  , usuarios.id_user , review.text_review  FROM review 
  join Usuarios
  on review.user_review_id = usuarios.id_user ;
  
  select * from Review_Uusario;
  
  
  
  


