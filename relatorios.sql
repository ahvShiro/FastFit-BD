-- Relatórios de Cadastros Principais

-- 1. Relatório de Clientes Ativos com Dados de Contato
SELECT 
    c.nome,
    c.sobrenome,
    c.email,
    t.numero as telefone,
    e.cidade,
    e.estado
FROM clientes c
JOIN telefones t ON c.id_telefone = t.id
JOIN enderecos e ON c.id_endereco = e.id
WHERE c.ativo = true
AND c.deletado_em IS NULL;

-- 2. Relatório de Restaurantes por Cidade com Taxa de Entrega
SELECT 
    r.nome_fantasia,
    r.cnpj,
    e.cidade,
    r.pedido_minimo,
    COUNT(p.id) as total_pedidos
FROM restaurantes r
JOIN enderecos e ON r.endereco = e.id
LEFT JOIN pedidos p ON r.id = p.id_restaurante
GROUP BY r.id, r.nome_fantasia, r.cnpj, e.cidade, r.pedido_minimo
ORDER BY total_pedidos DESC;

-- 3. Relatório de Entregadores com Veículos
SELECT 
    e.nome,
    e.sobrenome,
    e.cpf,
    v.tipo as tipo_veiculo,
    v.placa,
    t.numero as telefone
FROM entregadores e
JOIN veiculos v ON e.id_veiculo = v.id
JOIN telefones t ON e.id_telefone = t.id
WHERE e.deletado_em IS NULL;

-- 4. Relatório de Pratos por Categoria com Preço Médio
SELECT 
    r.nome_fantasia,
    p.nome as nome_prato,
    p.preco,
    m.proteinas,
    m.carboidratos,
    m.gorduras_saturadas
FROM pratos p
JOIN restaurantes r ON p.id_restaurante = r.id
JOIN macros m ON p.id_macro = m.id
WHERE p.disponivel = true
ORDER BY r.nome_fantasia, p.preco;

-- Relatórios de Movimentação

-- 1. Relatório de Vendas por Período
SELECT 
    r.nome_fantasia,
    COUNT(p.id) as total_pedidos,
    SUM(pg.valor_pago) as valor_total,
    AVG(pg.valor_pago) as ticket_medio
FROM pedidos p
JOIN restaurantes r ON p.id_restaurante = r.id
JOIN pagamentos_pedidos pp ON p.id = pp.id_pedido
JOIN pagamentos pg ON pp.id_pagamento = pg.id
WHERE p.criado_em >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY r.nome_fantasia
ORDER BY valor_total DESC;

-- 2. Relatório de Status de Pedidos
SELECT 
    sp.status,
    COUNT(p.id) as quantidade_pedidos,
    r.nome_fantasia
FROM pedidos p
JOIN status_pedidos sp ON p.id_status_entrega = sp.id
JOIN restaurantes r ON p.id_restaurante = r.id
GROUP BY sp.status, r.nome_fantasia
ORDER BY quantidade_pedidos DESC;

-- 3. Relatório de Avaliações
SELECT 
    r.nome_fantasia,
    AVG(ar.nota) as media_restaurante,
    COUNT(DISTINCT ar.id) as total_avaliacoes,
    STRING_AGG(ar.comentario, '; ') as ultimos_comentarios
FROM avaliacoes_restaurantes ar
JOIN restaurantes r ON ar.id_restaurante = r.id
GROUP BY r.nome_fantasia
HAVING AVG(ar.nota) < 4
ORDER BY media_restaurante;

-- 4. Relatório de Pagamentos e Estornos
SELECT 
    mp.metodo,
    COUNT(p.id) as total_transacoes,
    SUM(p.valor_pago) as valor_total,
    COUNT(e.id) as total_estornos,
    COALESCE(SUM(e.valor), 0) as valor_estornado
FROM pagamentos p
JOIN metodos_pagamentos mp ON p.metodo_pagamento = mp.id
LEFT JOIN estornos e ON p.id = e.id_pagamento
GROUP BY mp.metodo
ORDER BY valor_total DESC;

-- 5. Relatório de Eficiência de Entregadores
SELECT 
    e.nome,
    e.sobrenome,
    COUNT(p.id) as total_entregas,
    AVG(ae.nota) as avaliacao_media,
    v.tipo as tipo_veiculo
FROM entregadores e
JOIN pedidos p ON e.id = p.id_entregador
JOIN avaliacoes_entregadores ae ON e.id = ae.id_entregador
JOIN veiculos v ON e.id_veiculo = v.id
GROUP BY e.id, e.nome, e.sobrenome, v.tipo
HAVING COUNT(p.id) > 5
ORDER BY avaliacao_media DESC;