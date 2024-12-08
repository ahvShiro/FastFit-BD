SELECT 
    clientes.id, 
    clientes.nome, 
    clientes.sobrenome, 
    clientes.email, 
    clientes.ativo, 
    enderecos.latitude, 
    enderecos.longitude, 
    enderecos.estado, 
    enderecos.cidade, 
    enderecos.bairro, 
    enderecos.rua, 
    enderecos.numero, 
    enderecos.complemento, 
    enderecos.cep, 
    dados_corporais.id AS dados_corporais_id, 
    dados_corporais.objetivo, 
    dados_corporais.idade, 
    dados_corporais.sexo, 
    dados_corporais.altura, 
    dados_corporais.peso, 
    dados_corporais.porcentagem_gordura, 
    dados_corporais.nivel_atividade, 
    dados_corporais.circunferencia_pescoco, 
    dados_corporais.circunferencia_peito, 
    dados_corporais.circunferencia_quadril, 
    dados_corporais.circunferencia_coxa, 
    telefones.numero AS telefone
FROM 
    clientes
JOIN 
    enderecos ON clientes.id_endereco = enderecos.id
JOIN 
    dados_corporais ON clientes.id_dados_corporais = dados_corporais.id
JOIN 
    telefones ON clientes.id_telefone = telefones.id;


SELECT 
    restaurantes.id, 
    restaurantes.cnpj, 
    restaurantes.razao_social, 
    restaurantes.nome_fantasia, 
    restaurantes.pedido_minimo, 
    restaurantes.taxa_entrega, 
    enderecos.latitude, 
    enderecos.longitude, 
    enderecos.estado, 
    enderecos.cidade, 
    enderecos.bairro, 
    enderecos.rua, 
    enderecos.numero, 
    enderecos.complemento, 
    enderecos.cep
FROM 
    restaurantes
JOIN 
    enderecos ON restaurantes.id_endereco = enderecos.id;


SELECT 
    entregadores.id, 
    entregadores.nome, 
    entregadores.sobrenome, 
    entregadores.cpf, 
    entregadores.rg, 
    telefones.numero AS telefone, 
    veiculos.tipo AS veiculo_tipo, 
    veiculos.placa AS veiculo_placa, 
    veiculos.modelo AS veiculo_modelo, 
    veiculos.marca AS veiculo_marca, 
    cnhs.registro AS cnh_registro, 
    cnhs.data_emissao AS cnh_data_emissao, 
    cnhs.data_validade AS cnh_data_validade, 
    cnhs.categoria AS cnh_categoria, 
    cnhs.provisoria_ou_definitiva AS cnh_tipo
FROM 
    entregadores
JOIN 
    telefones ON entregadores.id_telefone = telefones.id
JOIN 
    veiculos ON entregadores.id_veiculo = veiculos.id
JOIN 
    cnhs ON entregadores.id_cnh = cnhs.id;

SELECT 
    pratos.id, 
    pratos.nome, 
    pratos.descricao, 
    pratos.preco, 
    pratos.disponivel, 
    pratos.url_imagem, 
    restaurantes.nome_fantasia AS restaurante, 
    macros.carboidratos, 
    macros.proteinas, 
    macros.gorduras
FROM 
    pratos
JOIN 
    restaurantes ON pratos.id_restaurante = restaurantes.id
JOIN 
    macros ON pratos.id_macro = macros.id;



SELECT 
    pedidos.id, 
    clientes.nome AS cliente, 
    restaurantes.nome_fantasia AS restaurante, 
    entregadores.nome AS entregador, 
    status_pedidos.status, 
    pedidos.criado_em, 
    pedidos.atualizado_em, 
    pedidos.deletado_em
FROM 
    pedidos
JOIN 
    clientes ON pedidos.id_cliente = clientes.id
JOIN 
    restaurantes ON pedidos.id_restaurante = restaurantes.id
JOIN 
    entregadores ON pedidos.id_entregador = entregadores.id
JOIN 
    status_pedidos ON pedidos.id_status_entrega = status_pedidos.id;

SELECT 
    pagamentos.id, 
    pagamentos.data_pagamento, 
    pagamentos.valor_pago, 
    metodos_pagamentos.metodo, 
    status_pagamentos.status, 
    pedidos.id AS pedido_id, 
    clientes.nome AS cliente, 
    restaurantes.nome_fantasia AS restaurante
FROM 
    pagamentos
JOIN 
    metodos_pagamentos ON pagamentos.metodo_pagamento = metodos_pagamentos.id
JOIN 
    status_pagamentos ON pagamentos.status_pagamento = status_pagamentos.id
JOIN 
    pagamentos_pedidos ON pagamentos.id = pagamentos_pedidos.id_pagamento
JOIN 
    pedidos ON pagamentos_pedidos.id_pedido = pedidos.id
JOIN 
    clientes ON pedidos.id_cliente = clientes.id
JOIN 
    restaurantes ON pedidos.id_restaurante = restaurantes.id;

SELECT 
    avaliacoes_pratos.id, 
    clientes.nome AS cliente, 
    pratos.nome AS prato, 
    avaliacoes_pratos.nota, 
    avaliacoes_pratos.comentario, 
    avaliacoes_pratos.criado_em, 
    avaliacoes_pratos.atualizado_em
FROM 
    avaliacoes_pratos
JOIN 
    clientes ON avaliacoes_pratos.id_cliente = clientes.id
JOIN 
    pratos ON avaliacoes_pratos.id_prato = pratos.id;

SELECT 
    avaliacoes_entregadores.id, 
    clientes.nome AS cliente, 
    entregadores.nome AS entregador, 
    avaliacoes_entregadores.nota, 
    avaliacoes_entregadores.comentario, 
    avaliacoes_entregadores.criado_em, 
    avaliacoes_entregadores.atualizado_em
FROM 
    avaliacoes_entregadores
JOIN 
    clientes ON avaliacoes_entregadores.id_cliente = clientes.id
JOIN 
    entregadores ON avaliacoes_entregadores.id_entregador = entregadores.id;

SELECT 
    avaliacoes_restaurantes.id, 
    clientes.nome AS cliente, 
    restaurantes.nome_fantasia AS restaurante, 
    avaliacoes_restaurantes.nota, 
    avaliacoes_restaurantes.comentario, 
    avaliacoes_restaurantes.criado_em, 
    avaliacoes_restaurantes.atualizado_em
FROM 
    avaliacoes_restaurantes
JOIN 
    clientes ON avaliacoes_restaurantes.id_cliente = clientes.id
JOIN 
    restaurantes ON avaliacoes_restaurantes.id_restaurante = restaurantes.id;

