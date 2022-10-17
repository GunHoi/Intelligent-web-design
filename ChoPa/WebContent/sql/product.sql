use ChoPadb;
CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock LONG,
	p_condition VARCHAR(20),
	p_filename VARCHAR(20),
	userID varchar(20),
	PRIMARY KEY (p_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
