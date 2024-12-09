------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ MOVIMENTOS ------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------


-- Relatório de Cadastro de Tipos de Telefone
SELECT id, tipo
FROM tipos_telefone;

-- Relatório de Registro de Telefones com Tipos de Telefone
SELECT telefones.id AS id_telefone,
       telefones.numero,
       tipos_telefone.tipo,
       telefones.criado_em,
       telefones.atualizado_em,
       telefones.deletado_em
FROM telefones
         JOIN tipos_telefone ON telefones.id_tipo_telefone = tipos_telefone.id;

-- Relatório de Cadastro de Endereços
SELECT id, estado, cidade, bairro, rua, numero, cep
FROM enderecos;

-- Relatório de Cadastro de Objetivos
SELECT id, nome_objetivo
FROM objetivos;

-- Relatório de Cadastro de Níveis de Atividade
SELECT id, nome
FROM niveis_atividade;

-- Relatório de Cadastro de Dados Corporais com Objetivos e Níveis de Atividade
SELECT dados_corporais.id,
       dados_corporais.idade,
       dados_corporais.sexo,
       dados_corporais.altura,
       dados_corporais.peso,
       objetivos.nome_objetivo,
       niveis_atividade.nome
FROM dados_corporais
         JOIN objetivos ON dados_corporais.objetivo = objetivos.id
         JOIN niveis_atividade ON dados_corporais.nivel_atividade = niveis_atividade.id;

-- Relatório de Cadastro de Clientes com Endereços, Dados Corporais e Telefones
SELECT clientes.id,
       clientes.nome,
       clientes.sobrenome,
       enderecos.cidade,
       enderecos.estado,
       dados_corporais.altura,
       dados_corporais.peso,
       telefones.numero
FROM clientes
         JOIN enderecos ON clientes.id_endereco = enderecos.id
         JOIN dados_corporais ON clientes.id_dados_corporais = dados_corporais.id
         JOIN telefones ON clientes.id_telefone = telefones.id;

-- Relatório de Cadastro de Veículos
SELECT id, tipo, placa, modelo, marca
FROM veiculos;

-- Relatório de Cadastro de CNHs
SELECT id, registro, data_emissao, data_validade, categoria
FROM cnhs;

-- Relatório de Cadastro de Entregadores com Telefones, Veículos e CNHs
SELECT entregadores.id,
       entregadores.nome,
       entregadores.sobrenome,
       telefones.numero,
       veiculos.tipo,
       veiculos.placa,
       cnhs.registro
FROM entregadores
         JOIN telefones ON entregadores.id_telefone = telefones.id
         JOIN veiculos ON entregadores.id_veiculo = veiculos.id
         JOIN cnhs ON entregadores.id_cnh = cnhs.id;

-- Relatório de Cadastro de Restaurantes com Endereços
SELECT restaurantes.id, restaurantes.nome_fantasia, enderecos.cidade, enderecos.estado
FROM restaurantes
         JOIN enderecos ON restaurantes.id_endereco = enderecos.id;

-- Relatório de Cadastro de Macros
SELECT id, proteinas, carboidratos, gorduras
FROM macros;

-- Relatório de Cadastro de Ingredientes
SELECT id, ingrediente, kosher, halal
FROM ingredientes;

-- Relatório de Cadastro de Pratos com Macros e Restaurantes
SELECT pratos.id,
       pratos.nome,
       pratos.preco,
       macros.proteinas,
       macros.carboidratos,
       macros.gorduras,
       restaurantes.nome_fantasia
FROM pratos
         JOIN macros ON pratos.id_macro = macros.id
         JOIN restaurantes ON pratos.id_restaurante = restaurantes.id;

-- Relatório de Cadastro de Ingredientes Pratos com Ingredientes e Pratos
SELECT ingredientes_pratos.id,
       ingredientes.ingrediente,
       pratos.nome AS nome_prato,
       ingredientes_pratos.quantidade,
       ingredientes_pratos.unidade_de_medida
FROM ingredientes_pratos
         JOIN ingredientes ON ingredientes_pratos.id_ingrediente = ingredientes.id
         JOIN pratos ON ingredientes_pratos.id_prato = pratos.id;

-- Relatório de Cadastro de Status de Pedidos
SELECT id, status
FROM status_pedidos;

-- Relatório de Cadastro de Métodos de Pagamento
SELECT id, metodo
FROM metodos_pagamentos;

-- Relatório de Cadastro de Status de Pagamentos
SELECT id, status
FROM status_pagamentos;

-- Relatório de Cadastro de Cupons com Restaurantes
SELECT cupons.id, cupons.codigo, cupons.descricao, cupons.desconto, restaurantes.nome_fantasia
FROM cupons
         JOIN restaurantes ON cupons.id_restaurante = restaurantes.id;

-- Relatório de Cadastro de Preferências com Clientes e Pratos
SELECT preferencias.id, clientes.nome AS nome_cliente, pratos.nome AS nome_prato, preferencias.filtro_usado
FROM preferencias
         JOIN clientes ON preferencias.id_cliente = clientes.id
         LEFT JOIN pratos ON preferencias.id_prato = pratos.id;

-- Relatório de Cadastro de Necessidades Nutricionais
SELECT id, tipo_refeicao, calorias
FROM necessidades_nutricionais;

-- Relatório de Cadastro de Necessidades dos Clientes com Necessidades Nutricionais e Clientes
SELECT necessidades_clientes.id, necessidades_nutricionais.tipo_refeicao, clientes.nome
FROM necessidades_clientes
         JOIN necessidades_nutricionais
              ON necessidades_clientes.id_necessidades_nutricionais = necessidades_nutricionais.id
         JOIN clientes ON necessidades_clientes.id_cliente = clientes.id;


-- Relatório de Restrições Alimentares com Clientes e Ingredientes
SELECT restricoes_alimentares.id, clientes.nome AS nome_cliente, ingredientes.ingrediente
FROM restricoes_alimentares
         JOIN clientes ON restricoes_alimentares.id_cliente = clientes.id
         JOIN ingredientes ON restricoes_alimentares.id_ingrediente = ingredientes.id;



------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ MOVIMENTOS ------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------

-- Relatório Completo de Pagamentos Realizados
SELECT pagamentos.id              AS id_pagamento,
       pagamentos.data_pagamento,
       pagamentos.valor_pago,
       metodos_pagamentos.metodo  AS metodo_pagamento,
       status_pagamentos.status   AS status_pagamento,
       pedidos.id                 AS id_pedido,
       clientes.nome              AS nome_cliente,
       restaurantes.nome_fantasia AS nome_restaurante
FROM pagamentos
         JOIN metodos_pagamentos ON pagamentos.metodo_pagamento = metodos_pagamentos.id
         JOIN status_pagamentos ON pagamentos.status_pagamento = status_pagamentos.id
         JOIN pagamentos_pedidos ON pagamentos.id = pagamentos_pedidos.id_pagamento
         JOIN pedidos ON pagamentos_pedidos.id_pedido = pedidos.id
         JOIN clientes ON pedidos.id_cliente = clientes.id
         JOIN restaurantes ON pedidos.id_restaurante = restaurantes.id;

-- Relatório Completo dos Pedidos Ralizados
SELECT pedidos.id                                 AS id_pedido,
       pedidos.criado_em,
       clientes.nome                              AS nome_cliente,
       clientes.sobrenome                         AS sobrenome_cliente,
       clientes.email                             AS email_cliente,
       restaurantes.nome_fantasia                 AS nome_restaurante,
       restaurantes.cnpj                          AS cnpj_restaurante,
       pratos.nome                                AS nome_prato,
       pratos.preco                               AS preco_prato,
       pedidos_pratos.quantidade,
       (pratos.preco * pedidos_pratos.quantidade) AS valor_total_prato
FROM pedidos
         JOIN clientes ON pedidos.id_cliente = clientes.id
         JOIN restaurantes ON pedidos.id_restaurante = restaurantes.id
         JOIN pedidos_pratos ON pedidos.id = pedidos_pratos.id_pedido
         JOIN pratos ON pedidos_pratos.id_prato = pratos.id;


-- Relatório Completasso de Todas as Movimentações (Pedidos com Clientes, Restaurantes, Entregadores, Status de Entrega, Pratos e Pagamentos)
SELECT pedidos.id                                 AS id_pedido,
       pedidos.criado_em                          AS data_pedido,
       clientes.nome                              AS nome_cliente,
       clientes.sobrenome                         AS sobrenome_cliente,
       clientes.email                             AS email_cliente,
       restaurantes.nome_fantasia                 AS nome_restaurante,
       restaurantes.cnpj                          AS cnpj_restaurante,
       pratos.nome                                AS nome_prato,
       pratos.preco                               AS preco_prato,
       pedidos_pratos.quantidade,
       (pratos.preco * pedidos_pratos.quantidade) AS valor_total_prato,
       entregadores.nome                          AS nome_entregador,
       entregadores.sobrenome                     AS sobrenome_entregador,
       entregadores.cpf                           AS cpf_entregador,
       status_pedidos.status                      AS status_entrega,
       pagamentos.id                              AS id_pagamento,
       pagamentos.data_pagamento,
       pagamentos.valor_pago,
       metodos_pagamentos.metodo                  AS metodo_pagamento,
       status_pagamentos.status                   AS status_pagamento
FROM pedidos
         JOIN clientes ON pedidos.id_cliente = clientes.id
         JOIN restaurantes ON pedidos.id_restaurante = restaurantes.id
         JOIN pedidos_pratos ON pedidos.id = pedidos_pratos.id_pedido
         JOIN pratos ON pedidos_pratos.id_prato = pratos.id
         JOIN entregadores ON pedidos.id_entregador = entregadores.id
         JOIN status_pedidos ON pedidos.id_status_entrega = status_pedidos.id
         JOIN pagamentos_pedidos ON pedidos.id = pagamentos_pedidos.id_pedido
         JOIN pagamentos ON pagamentos_pedidos.id_pagamento = pagamentos.id
         JOIN metodos_pagamentos ON pagamentos.metodo_pagamento = metodos_pagamentos.id
         JOIN status_pagamentos ON pagamentos.status_pagamento = status_pagamentos.id;

-- Relatório de Avaliações de Restaurantes com Clientes e Restaurantes
SELECT avaliacoes_restaurantes.id AS id_avaliacao,
       clientes.nome              AS nome_cliente,
       restaurantes.nome_fantasia AS nome_restaurante,
       avaliacoes_restaurantes.nota,
       avaliacoes_restaurantes.comentario,
       avaliacoes_restaurantes.atualizado_em
FROM avaliacoes_restaurantes
         JOIN clientes ON avaliacoes_restaurantes.id_cliente = clientes.id
         JOIN restaurantes ON avaliacoes_restaurantes.id_restaurante = restaurantes.id;

-- Relatório de Avaliações de Pratos com Clientes e Pratos
SELECT avaliacoes_pratos.id AS id_avaliacao,
       clientes.nome        AS nome_cliente,
       pratos.nome          AS nome_prato,
       avaliacoes_pratos.nota,
       avaliacoes_pratos.comentario,
       avaliacoes_pratos.atualizado_em
FROM avaliacoes_pratos
         JOIN clientes ON avaliacoes_pratos.id_cliente = clientes.id
         JOIN pratos ON avaliacoes_pratos.id_prato = pratos.id;

-- Relatório de Avaliações de Entregadores com Clientes e Entregadores
SELECT avaliacoes_entregadores.id AS id_avaliacao,
       clientes.nome              AS nome_cliente,
       entregadores.nome          AS nome_entregador,
       entregadores.sobrenome     AS sobrenome_entregador,
       avaliacoes_entregadores.nota,
       avaliacoes_entregadores.comentario,
       avaliacoes_entregadores.atualizado_em
FROM avaliacoes_entregadores
         JOIN clientes ON avaliacoes_entregadores.id_cliente = clientes.id
         JOIN entregadores ON avaliacoes_entregadores.id_entregador = entregadores.id;
