
DELETE FROM llx_const WHERE name='MYMODULE_IT_WORKS' AND entity='__ENTITY__';
INSERT INTO llx_const (name, value, type, note, visible, entity) VALUES ('MYMODULE_IT_WORKS','1','chaine','A constant vor my module',1,'__ENTITY__');