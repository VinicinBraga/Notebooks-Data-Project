-- Adicione a nova coluna new_ram_type como VARCHAR
ALTER TABLE notebooks_table
ADD COLUMN new_ram_type VARCHAR(50);

-- Atualize os valores na nova coluna new_ram_type
UPDATE notebooks_table
SET new_ram_type = CASE
    WHEN ram_type IN ('LPDDR4', 'LPDDR4X') THEN 'DDR4'
    WHEN ram_type = 'LPDDR3' THEN 'DDR3'
    ELSE ram_type
END;