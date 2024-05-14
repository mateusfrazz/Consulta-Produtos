SELECT 
P.Descricao AS produto,
H.EstoqueAnterior,
H.EstoqueLancado,
H.PrecoVenda1 AS precovenda,
H.Usuario,
H.`Data`,
H.MOTIVO,
V.codvenda,
V.Quantidade,  
V.datalancamento
FROM histproduto H
INNER JOIN vendadetalhe V ON V.CodProduto = H.CodProduto
INNER JOIN produto P ON P.codproduto = H.CodProduto
WHERE P.CodBarra = '0AUT2'
AND H.PrecoVenda1 <> '(NULL)'
AND V.datalancamento  BETWEEN '2022-06-28 00:00:00' AND  '2022-09-16 00:00:00'
ORDER BY datalancamento DESC;