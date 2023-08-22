-- Adicione as colunas para os preços em reais
ALTER TABLE notebooks_table
ADD COLUMN real_latest_price DECIMAL(10, 2),
ADD COLUMN real_old_price DECIMAL(10, 2);

-- Atualize os valores das colunas de preços em reais
UPDATE notebooks_table
SET real_latest_price = latest_price * 0.059,
    real_old_price = old_price * 0.059;