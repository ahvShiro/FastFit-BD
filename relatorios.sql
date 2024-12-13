------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ CADASTROS ------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

-- Relatório de Tipos de Telefone
SELECT *
FROM "tipos_telefone";

-- Relatório de Telefones
SELECT *
FROM "telefones";

-- Relatório de Endereços
SELECT *
FROM "enderecos";

-- Relatório de Objetivos
SELECT *
FROM "objetivos";

-- Relatório de Níveis de Atividade
SELECT *
FROM "niveis_atividade";

-- Relatório de Dados Corporais
SELECT *
FROM "dados_corporais";

-- Relatório de Clientes
SELECT *
FROM "clientes";

-- Relatório de Restaurantes
SELECT *
FROM "restaurantes";

-- Relatório de Macros
SELECT *
FROM "macros";

-- Relatório de Adicionais
SELECT *
FROM "adicionais";

-- Relatório de Ingredientes
SELECT *
FROM "ingredientes";

-- Relatório de Pratos
SELECT *
FROM "pratos";

-- Relatório de Ingredientes Pratos
SELECT *
FROM "ingredientes_pratos";

-- Relatório de Status de Pedidos
SELECT *
FROM "status_pedidos";

-- Relatório de Métodos de Pagamentos
SELECT *
FROM "metodos_pagamentos";

-- Relatório de Status de Pagamentos
SELECT *
FROM "status_pagamentos";

-- Relatório de Estornos
SELECT *
FROM "estornos";

-- Relatório de Avaliações de Restaurantes
SELECT *
FROM "avaliacoes_restaurantes";

-- Relatório de Avaliações de Pratos
SELECT *
FROM "avaliacoes_pratos";

-- Relatório de Restrições Alimentares
SELECT *
FROM "restricoes_alimentares";

-- Relatório de Cupons
SELECT *
FROM "cupons";

-- Relatório de Preferências
SELECT *
FROM "preferencias";

-- Relatório de Necessidades Nutricionais
SELECT *
FROM "necessidades_nutricionais";

-- Relatório de Necessidades de Clientes
SELECT *
FROM "necessidades_clientes";

-- Relatório de Pedidos Pratos
SELECT *
FROM "pedidos_pratos";


------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ MOVIMENTOS ------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

-- Relatório de Pedidos
SELECT *
FROM "pedidos";

-- Relatório de Pagamentos
SELECT *
FROM "pagamentos";

-- Relatório de Pagamentos Pedidos
SELECT *
FROM "pagamentos_pedidos";

-- Relatório de Ingredientes por Prato
SELECT pratos.nome                           AS "Prato",
       ingredientes.ingrediente              AS "Ingrediente",
       ingredientes_pratos.quantidade        AS "Quantidade",
       ingredientes_pratos.unidade_de_medida AS "Unidade"
FROM ingredientes_pratos
         JOIN pratos ON ingredientes_pratos.id_prato = pratos.id
         JOIN ingredientes ON ingredientes_pratos.id_ingrediente = ingredientes.id;

-- Relatório de Total de Ingredientes Utilizados
SELECT ingredientes.ingrediente              AS "Ingrediente",
       SUM(ingredientes_pratos.quantidade)   AS "Quantidade Total",
       ingredientes_pratos.unidade_de_medida AS "Unidade"
FROM ingredientes_pratos
         JOIN ingredientes ON ingredientes_pratos.id_ingrediente = ingredientes.id
GROUP BY ingredientes.ingrediente, ingredientes_pratos.unidade_de_medida;

-- Relatório de Pedidos por Cliente
SELECT clientes.nome         AS "Cliente",
       pedidos.id            AS "ID Pedido",
       pedidos.criado_em     AS "Data do Pedido",
       status_pedidos.status AS "Status"
FROM pedidos
         JOIN clientes ON pedidos.id_cliente = clientes.id
         JOIN status_pedidos ON pedidos.id_status_entrega = status_pedidos.id;

-- Relatório de Pedidos por Restaurante
SELECT restaurantes.nome_fantasia AS "Restaurante",
       pedidos.id                 AS "ID Pedido",
       pedidos.criado_em          AS "Data do Pedido",
       status_pedidos.status      AS "Status"
FROM pedidos
         JOIN restaurantes ON pedidos.id_restaurante = restaurantes.id
         JOIN status_pedidos ON pedidos.id_status_entrega = status_pedidos.id;

-- Relatório de Pagamentos Realizados
SELECT pagamentos.id             AS "ID Pagamento",
       pagamentos.data_pagamento AS "Data",
       pagamentos.valor_pago     AS "Valor Pago",
       metodos_pagamentos.metodo AS "Método",
       status_pagamentos.status  AS "Status"
FROM pagamentos
         JOIN metodos_pagamentos ON pagamentos.metodo_pagamento = metodos_pagamentos.id
         JOIN status_pagamentos ON pagamentos.status_pagamento = status_pagamentos.id;

-- Relatório de Pagamentos por Cliente
SELECT clientes.nome             AS "Cliente",
       pagamentos.id             AS "ID Pagamento",
       pagamentos.valor_pago     AS "Valor Pago",
       pagamentos.data_pagamento AS "Data"
FROM pagamentos_pedidos
         JOIN pagamentos ON pagamentos_pedidos.id_pagamento = pagamentos.id
         JOIN pedidos ON pagamentos_pedidos.id_pedido = pedidos.id
         JOIN clientes ON pedidos.id_cliente = clientes.id;

-- Relatório de Pagamentos Associados a Pedidos
SELECT pagamentos.id             AS "ID Pagamento",
       pedidos.id                AS "ID Pedido",
       pagamentos.valor_pago     AS "Valor Pago",
       pagamentos.data_pagamento AS "Data do Pagamento"
FROM pagamentos_pedidos
         JOIN pagamentos ON pagamentos_pedidos.id_pagamento = pagamentos.id
         JOIN pedidos ON pagamentos_pedidos.id_pedido = pedidos.id;

-- Relatório de Total Pago por Pedido
SELECT pedidos.id                 AS "ID Pedido",
       SUM(pagamentos.valor_pago) AS "Total Pago"
FROM pagamentos_pedidos
         JOIN pagamentos ON pagamentos_pedidos.id_pagamento = pagamentos.id
         JOIN pedidos ON pagamentos_pedidos.id_pedido = pedidos.id
GROUP BY pedidos.id;

-- Relatório de Estornos Realizados
SELECT estornos.id        AS "ID Estorno",
       estornos.valor     AS "Valor Estornado",
       estornos.motivo    AS "Motivo",
       estornos.criado_em AS "Data do Estorno"
FROM estornos;

-- Relatório de Estornos por Cliente
SELECT clientes.nome      AS "Cliente",
       estornos.valor     AS "Valor Estornado",
       estornos.motivo    AS "Motivo",
       estornos.criado_em AS "Data do Estorno"
FROM estornos
         JOIN pagamentos ON estornos.id_pagamento = pagamentos.id
         JOIN pagamentos_pedidos ON pagamentos.id = pagamentos_pedidos.id_pagamento
         JOIN pedidos ON pagamentos_pedidos.id_pedido = pedidos.id
         JOIN clientes ON pedidos.id_cliente = clientes.id;

-- Relatório de Avaliações dos Restaurantes
SELECT restaurantes.nome_fantasia         AS "Restaurante",
       avaliacoes_restaurantes.nota       AS "Nota",
       avaliacoes_restaurantes.comentario AS "Comentário",
       clientes.nome                      AS "Cliente"
FROM avaliacoes_restaurantes
         JOIN restaurantes ON avaliacoes_restaurantes.id_restaurante = restaurantes.id
         JOIN clientes ON avaliacoes_restaurantes.id_cliente = clientes.id;

-- Relatório de Média de Avaliações por Restaurante
SELECT restaurantes.nome_fantasia        AS "Restaurante",
       AVG(avaliacoes_restaurantes.nota) AS "Nota Média"
FROM avaliacoes_restaurantes
         JOIN restaurantes ON avaliacoes_restaurantes.id_restaurante = restaurantes.id
GROUP BY restaurantes.nome_fantasia;

-- Relatório de Avaliações dos Pratos
SELECT pratos.nome                  AS "Prato",
       avaliacoes_pratos.nota       AS "Nota",
       avaliacoes_pratos.comentario AS "Comentário",
       clientes.nome                AS "Cliente"
FROM avaliacoes_pratos
         JOIN pratos ON avaliacoes_pratos.id_prato = pratos.id
         JOIN clientes ON avaliacoes_pratos.id_cliente = clientes.id;

-- Relatório de Top 5 Pratos Mais Bem Avaliados
SELECT pratos.nome                 AS "Prato",
       AVG(avaliacoes_pratos.nota) AS "Nota Média"
FROM avaliacoes_pratos
         JOIN pratos ON avaliacoes_pratos.id_prato = pratos.id
GROUP BY pratos.nome
ORDER BY AVG(avaliacoes_pratos.nota) DESC
LIMIT 5;

-- Relatório de Necessidades Nutricionais por Cliente
SELECT clientes.nome                           AS "Cliente",
       necessidades_nutricionais.tipo_refeicao AS "Tipo de Refeição",
       necessidades_nutricionais.calorias      AS "Calorias",
       necessidades_nutricionais.proteinas     AS "Proteínas"
FROM necessidades_clientes
         JOIN clientes ON necessidades_clientes.id_cliente = clientes.id
         JOIN necessidades_nutricionais
              ON necessidades_clientes.id_necessidades_nutricionais = necessidades_nutricionais.id;

-- Relatório de Clientes com Necessidades Especiais
SELECT clientes.nome                           AS "Cliente",
       necessidades_nutricionais.tipo_refeicao AS "Tipo de Refeição",
       restricoes_alimentares.id_ingrediente   AS "ID Ingrediente Restrito"
FROM necessidades_clientes
         JOIN clientes ON necessidades_clientes.id_cliente = clientes.id
         JOIN necessidades_nutricionais
              ON necessidades_clientes.id_necessidades_nutricionais = necessidades_nutricionais.id
         JOIN restricoes_alimentares ON necessidades_clientes.id_cliente = restricoes_alimentares.id_cliente