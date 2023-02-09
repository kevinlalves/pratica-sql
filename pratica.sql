/* como eu nao coloquei na hora da aula, vou colocar apenas os que ficaram diferentes do mostrado */

/* 9 */
INSERT INTO compras (id_cliente, id_produto)
SELECT clientes.id, produtos.id
FROM clientes, produtos
WHERE clientes.nome = 'Chico Buarque de Holanda' AND produtos.nome = 'Violão Lava ME 2';

/* 10 */
WITH compra AS (
  SELECT clientes.id as id_cliente, produtos.id as id_produto
  FROM clientes, produtos
  WHERE clientes.nome = 'Olga Cascais Fortunato' AND produtos.nome = 'Celular Topo de Linha'
)
INSERT INTO compras (id_cliente, id_produto)
SELECT * FROM compra UNION
SELECT * FROM compra;

/* 11 */
DELETE FROM compras
WHERE (id_cliente, id_produto) = (
  SELECT clientes.id, produtos.id
  FROM clientes, produtos
  WHERE clientes.nome = 'Martinha Lima Zambujal' AND produtos.nome = 'Fone Topo de Linha'
);

/* D1 */
SELECT * FROM produtos
WHERE nome ILIKE '%televisão%';

/* D2 */
SELECT * FROM produtos
WHERE preco < 100000;

/* D3 */
SELECT * FROM produtos
WHERE nome ILIKE '%celular%' AND preco < 200000;

/* D4 */
SELECT clientes.* FROM clientes
LEFT JOIN compras ON clientes.id = compras.id_cliente
WHERE compras.id IS NULL;

/* D5 */
SELECT produtos.* FROM produtos
JOIN compras ON produtos.id = compras.id_produto
JOIN clientes ON compras.id_cliente = clientes.id
WHERE clientes.nome = 'Benício Freire Sampaio';
