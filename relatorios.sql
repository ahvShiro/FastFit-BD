-- CADASTROS

-- Relatório de Tipos de Telefone
SELECT id, tipo, criado_em, atualizado_em
FROM "tipos_telefone";

-- Relatório de Telefones
SELECT telefones.id,
       telefones.numero,
       tipos_telefone.tipo AS tipo_telefone,
       telefones.criado_em,
       telefones.atualizado_em
FROM "telefones"
         JOIN "tipos_telefone" ON telefones.id_tipo_telefone = tipos_telefone.id;

-- Relatório de Endereços
SELECT id,
       estado,
       cidade,
       bairro,
       rua,
       numero,
       complemento,
       cep,
       criado_em,
       atualizado_em
FROM "enderecos";

-- Relatório de Objetivos
SELECT id, nome_objetivo, descricao, criado_em, atualizado_em
FROM "objetivos";

-- Relatório de Níveis de Atividade
SELECT id, nome, descricao, criado_em, atualizado_em
FROM "niveis_atividade";

-- Relatório de Dados Corporais
SELECT dados_corporais.id,
       objetivos.nome_objetivo,
       dados_corporais.idade,
       dados_corporais.sexo,
       dados_corporais.altura,
       dados_corporais.peso,
       dados_corporais.porcentagem_gordura,
       niveis_atividade.nome AS nivel_atividade,
       dados_corporais.criado_em,
       dados_corporais.atualizado_em
FROM "dados_corporais"
         JOIN "objetivos" ON dados_corporais.objetivo = objetivos.id
         JOIN "niveis_atividade" ON dados_corporais.nivel_atividade = niveis_atividade.id;

-- Relatório de Clientes
SELECT clientes.id,
       clientes.nome,
       clientes.sobrenome,
       clientes.email,
       enderecos.cidade,
       enderecos.estado,
       telefones.numero AS telefone,
       clientes.criado_em,
       clientes.atualizado_em
FROM "clientes"
         JOIN "enderecos" ON clientes.id_endereco = enderecos.id
         JOIN "telefones" ON clientes.id_telefone = telefones.id;

-- Relatório de Restaurantes
SELECT restaurantes.id,
       restaurantes.nome_fantasia,
       restaurantes.cnpj,
       enderecos.cidade,
       enderecos.estado,
       telefones.numero AS telefone,
       restaurantes.pedido_minimo,
       restaurantes.taxa_entrega,
       restaurantes.criado_em,
       restaurantes.atualizado_em
FROM "restaurantes"
         JOIN "enderecos" ON restaurantes.id_endereco = enderecos.id
         JOIN "telefones" ON restaurantes.id_telefone = telefones.id;

-- Relatório de Macros
SELECT id, carboidratos, proteinas, gorduras, criado_em, atualizado_em
FROM "macros";

-- Relatório de Adicionais
SELECT id, nome, quantidade, limite, criado_em, atualizado_em
FROM "adicionais";

-- Relatório de Ingredientes
SELECT id, ingrediente, kosher, halal, alergeno, criado_em, atualizado_em
FROM "ingredientes";

-- Relatório de Pratos
SELECT pratos.id,
       pratos.nome,
       pratos.descricao,
       pratos.preco,
       restaurantes.nome_fantasia AS restaurante,
       macros.carboidratos,
       macros.proteinas,
       macros.gorduras
FROM "pratos"
         JOIN "restaurantes" ON pratos.id_restaurante = restaurantes.id
         JOIN "macros" ON pratos.id_macro = macros.id;

-- Relatório de Ingredientes Pratos
SELECT ingredientes_pratos.id,
       ingredientes.ingrediente,
       pratos.nome AS prato,
       ingredientes_pratos.quantidade,
       ingredientes_pratos.unidade_de_medida,
       ingredientes_pratos.criado_em
FROM "ingredientes_pratos"
         JOIN "ingredientes" ON ingredientes_pratos.id_ingrediente = ingredientes.id
         JOIN "pratos" ON ingredientes_pratos.id_prato = pratos.id;

-- Relatório de Status de Pedidos
SELECT id, status, criado_em, atualizado_em
FROM "status_pedidos";

-- Relatório de Métodos de Pagamentos
SELECT id, metodo, criado_em, atualizado_em
FROM "metodos_pagamentos";

-- Relatório de Status de Pagamentos
SELECT id, status, criado_em, atualizado_em
FROM "status_pagamentos";

-- Relatório de Estornos
SELECT id, id_pagamento, valor, motivo, criado_em, atualizado_em
FROM "estornos";

-- Relatório de Avaliações de Restaurantes
SELECT avaliacoes_restaurantes.id,
       restaurantes.nome_fantasia AS restaurante,
       avaliacoes_restaurantes.nota,
       avaliacoes_restaurantes.comentario,
       clientes.nome              AS cliente,
       avaliacoes_restaurantes.criado_em,
       avaliacoes_restaurantes.atualizado_em
FROM "avaliacoes_restaurantes"
         JOIN "clientes" ON avaliacoes_restaurantes.id_cliente = clientes.id
         JOIN "restaurantes" ON avaliacoes_restaurantes.id_restaurante = restaurantes.id;

-- Relatório de Avaliações de Pratos
SELECT avaliacoes_pratos.id,
       pratos.nome   AS prato,
       avaliacoes_pratos.nota,
       avaliacoes_pratos.comentario,
       clientes.nome AS cliente,
       avaliacoes_pratos.criado_em,
       avaliacoes_pratos.atualizado_em
FROM "avaliacoes_pratos"
         JOIN "clientes" ON avaliacoes_pratos.id_cliente = clientes.id
         JOIN "pratos" ON avaliacoes_pratos.id_prato = pratos.id;

-- Relatório de Restrições Alimentares
SELECT restricoes_alimentares.id,
       clientes.nome AS cliente,
       ingredientes.ingrediente,
       restricoes_alimentares.criado_em,
       restricoes_alimentares.atualizado_em
FROM "restricoes_alimentares"
         JOIN "clientes" ON restricoes_alimentares.id_cliente = clientes.id
         JOIN "ingredientes" ON restricoes_alimentares.id_ingrediente = ingredientes.id;

-- Relatório de Cupons
SELECT id,
       codigo,
       descricao,
       desconto,
       data_inicio,
       data_fim,
       criado_em,
       atualizado_em
FROM "cupons";

-- Relatório de Preferências
SELECT preferencias.id,
       clientes.nome AS cliente,
       pratos.nome   AS prato,
       preferencias.filtro_usado,
       preferencias.criado_em,
       preferencias.atualizado_em
FROM "preferencias"
         JOIN "clientes" ON preferencias.id_cliente = clientes.id
         JOIN "pratos" ON preferencias.id_prato = pratos.id;

-- Relatório de Necessidades Nutricionais
SELECT id,
       tipo_refeicao,
       calorias,
       proteinas,
       carboidratos,
       fibras,
       gorduras_trans,
       sodio,
       gorduras_saturadas
FROM "necessidades_nutricionais";

-- Relatório de Necessidades de Clientes
SELECT necessidades_clientes.id,
       clientes.nome AS cliente,
       necessidades_nutricionais.tipo_refeicao,
       necessidades_clientes.criado_em,
       necessidades_clientes.atualizado_em
FROM "necessidades_clientes"
         JOIN "clientes" ON necessidades_clientes.id_cliente = clientes.id
         JOIN "necessidades_nutricionais"
              ON necessidades_clientes.id_necessidades_nutricionais = necessidades_nutricionais.id;

-- Relatório de Pedidos Pratos
SELECT pedidos_pratos.id,
       pedidos.id  AS pedido,
       pratos.nome AS prato,
       pedidos_pratos.quantidade,
       pedidos_pratos.criado_em,
       pedidos_pratos.atualizado_em
FROM "pedidos_pratos"
         JOIN "pedidos" ON pedidos_pratos.id_pedido = pedidos.id
         JOIN "pratos" ON pedidos_pratos.id_prato = pratos.id;















-- MOVIMENTOS



















-- Pedidos por Cliente
SELECT clientes.nome         AS "Cliente",
       pedidos.id            AS "ID Pedido",
       pedidos.criado_em     AS "Data do Pedido",
       status_pedidos.status AS "Status"
FROM "pedidos"
         JOIN "clientes" ON pedidos.id_cliente = clientes.id
         JOIN "status_pedidos" ON pedidos.id_status_entrega = status_pedidos.id;

-- Pedidos por Restaurante
SELECT restaurantes.nome_fantasia AS "Restaurante",
       pedidos.id                 AS "ID Pedido",
       pedidos.criado_em          AS "Data do Pedido",
       status_pedidos.status      AS "Status"
FROM "pedidos"
         JOIN "restaurantes" ON pedidos.id_restaurante = restaurantes.id
         JOIN "status_pedidos" ON pedidos.id_status_entrega = status_pedidos.id;

-- Pagamentos Realizados
SELECT pagamentos.id             AS "ID Pagamento",
       pagamentos.data_pagamento AS "Data",
       pagamentos.valor_pago     AS "Valor Pago",
       metodos_pagamentos.metodo AS "Método",
       status_pagamentos.status  AS "Status"
FROM "pagamentos"
         JOIN "metodos_pagamentos" ON pagamentos.metodo_pagamento = metodos_pagamentos.id
         JOIN "status_pagamentos" ON pagamentos.status_pagamento = status_pagamentos.id;


-- Avaliações dos Restaurantes
SELECT restaurantes.nome_fantasia         AS "Restaurante",
       avaliacoes_restaurantes.nota       AS "Nota",
       avaliacoes_restaurantes.comentario AS "Comentário",
       clientes.nome                      AS "Cliente"
FROM "avaliacoes_restaurantes"
         JOIN "clientes" ON avaliacoes_restaurantes.id_cliente = clientes.id
         JOIN "restaurantes" ON avaliacoes_restaurantes.id_restaurante = restaurantes.id;

-- Relatório de Top 5 Pratos Mais Bem Avaliados
SELECT pratos.nome                 AS "Prato",
       AVG(avaliacoes_pratos.nota) AS "Nota Média"
FROM "avaliacoes_pratos"
         JOIN "pratos" ON avaliacoes_pratos.id_prato = pratos.id
GROUP BY pratos.nome
ORDER BY AVG(avaliacoes_pratos.nota) DESC
LIMIT 5;

-- Pedidos "completo"
SELECT pedidos.id                 AS "ID Pedido",
       clientes.nome              AS "Cliente",
       restaurantes.nome_fantasia AS "Restaurante",
       status_pedidos.status      AS "Status do Pedido",
       pedidos.criado_em          AS "Data do Pedido"
FROM "pedidos"
         JOIN "clientes" ON pedidos.id_cliente = clientes.id
         JOIN "restaurantes" ON pedidos.id_restaurante = restaurantes.id
         JOIN "status_pedidos" ON pedidos.id_status_entrega = status_pedidos.id
ORDER BY pedidos.criado_em DESC;