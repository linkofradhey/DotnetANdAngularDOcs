CREATE TABLE parts(
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
)

INSERT INTO 
    parts(part_id, part_name)
VALUES
    (4,'Frame'),
    (3,'Head Tube'),
    (2,'Handlebar Grip'),
    (1,'Shock Absorber'),
    (5,'Fork');

SELECT * FROM parts 
SELECT * FROM parts WHERE part_id=5

CREATE CLUSTERED INDEX partId_ClusteredIndex
ON Parts(part_id)