-- Adicione a nova coluna new_discount como DECIMAL
ALTER TABLE notebooks_table
ADD COLUMN new_discount DECIMAL(10, 2);

-- Atualize os valores na nova coluna new_discount
UPDATE notebooks_table
SET new_discount = discount / 100;