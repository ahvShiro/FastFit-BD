INSERT INTO "tipos_telefone" (tipo)
VALUES ('Residencial'),
       ('Comercial'),
       ('Fax'),
       ('Celular'),
       ('WhatsApp');

INSERT INTO "telefones" ("numero", "id_tipo_telefone")
VALUES ('(41) 99999-1234', 4),
       ('(41) 3333-5678', 1),
       ('(41) 98888-8765', 5),
       ('(41) 9988-7766', 5),
       ('(41) 9887-6543', 4),
       ('(41) 99912-3456', 5),
       ('(41) 95555-1122', 4),
       ('(41) 99123-4567', 2),
       ('(41) 97456-7890', 4),
       ('(41) 96325-8745', 1),
       -- Restaurantes:
       ('(41) 4444-4321', 2),
       ('(41) 3421-4321', 2),
       ('(41) 3456-7890', 2),
       ('(41) 4321-4321', 2),
       ('(41) 4764-5423', 2);

INSERT INTO "enderecos" ("latitude", "longitude", "estado", "cidade", "bairro", "rua", "numero", "complemento", "cep")
VALUES (-25.4284, -49.2733, 'PR', 'Curitiba', 'Centro', 'Rua XV de Novembro', '123', 'Apto 301', '80020-310'),
       (-25.4290, -49.2707, 'PR', 'Curitiba', 'Água Verde', 'Av. República Argentina', '456', 'Bloco B', '80610-260'),
       (-25.4325, -49.2718, 'PR', 'Curitiba', 'Batel', 'Rua Carlos de Carvalho', '789', 'Casa', '80420-190'),
       (-25.4339, -49.2650, 'PR', 'Curitiba', 'Mercês', 'Av. Manoel Ribas', '321', 'Sala 12', '80810-200'),
       (-25.4400, -49.2800, 'PR', 'Curitiba', 'Juvevê', 'Rua Rocha Pombo', '654', 'Sobrado', '80040-010'),
       (-25.4412, -49.2765, 'PR', 'Curitiba', 'Hugo Lange', 'Rua Augusto Stresser', '111', 'Apto 202', '80040-320'),
       (-25.4430, -49.2777, 'PR', 'Curitiba', 'Alto da Glória', 'Av. João Gualberto', '999', 'Cobertura', '80030-000'),
       (-25.4350, -49.2720, 'PR', 'Curitiba', 'Santa Felicidade', 'Rua São José', '101', 'Casa 3', '82010-310'),
       (-25.4200, -49.2500, 'PR', 'Curitiba', 'Vila Izabel', 'Av. Sete de Setembro', '1000', 'Bloco A', '80440-070'),
       (-25.4420, -49.2780, 'PR', 'Curitiba', 'Boqueirão', 'Rua Marechal Floriano Peixoto', '200', 'Sala Comercial',
        '80530-020'),
       -- Restaurantes:
       (-25.4478, -49.2788, 'PR', 'Curitiba', 'Cabral', 'Rua Bom Jesus', '1500', 'Loja 5', '80035-350'),
       (-25.4500, -49.2700, 'PR', 'Curitiba', 'Centro Cívico', 'Av. Cândido de Abreu', '200', 'Esquina', '80530-000'),
       (-25.4525, -49.2755, 'PR', 'Curitiba', 'Ahú', 'Rua Mateus Leme', '333', 'Anexo', '80510-190'),
       (-25.4450, -49.2705, 'PR', 'Curitiba', 'Rebouças', 'Rua João Negrão', '500', 'Sala 101', '80215-000'),
       (-25.4595, -49.2890, 'PR', 'Curitiba', 'Santa Felicidade', 'Rua São Braz', '1000', 'Loja 12', '81810-030');

INSERT INTO "objetivos" ("nome_objetivo", "descricao")
VALUES ('Perda de Peso', 'Reduzir o peso corporal por meio de restrição calórica e exercícios'),
       ('Ganho de Massa Muscular', 'Aumentar a massa muscular com dieta rica em proteínas'),
       ('Manutenção de Peso', 'Manter o peso atual com ingestão equilibrada de calorias'),
       ('Redução de Gordura Corporal', 'Perder gordura enquanto mantém a massa muscular'),
       ('Melhora da Saúde Cardiovascular', 'Reduzir colesterol e melhorar a saúde do coração'),
       ('Controle de Diabetes', 'Manter os níveis de glicose estáveis por meio da dieta'),
       ('Aumento de Energia', 'Dieta focada em alimentos energéticos e de rápida digestão');

INSERT INTO "niveis_atividade" ("nome", "descricao")
VALUES ('Sedentário', 'Pouca ou nenhuma atividade física diária'),
       ('Levemente Ativo', 'Atividade física leve, como caminhadas ocasionais'),
       ('Moderadamente Ativo', 'Exercício moderado ou atividades físicas regulares'),
       ('Muito Ativo', 'Exercício intenso ou trabalho físico diário'),
       ('Extremamente Ativo', 'Treinamento atlético ou trabalho físico muito exigente');

INSERT INTO "dados_corporais" ("objetivo", "idade", "sexo", "altura", "peso", "porcentagem_gordura", "nivel_atividade",
                               "circunferencia_pescoco", "circunferencia_peito", "circunferencia_quadril",
                               "circunferencia_coxa")
VALUES (1, 25, 'M', 1.75, 75.50, 18.5, 3, 38.00, 100.00, 98.00, 55.00),
       (2, 30, 'F', 1.62, 60.20, 22.0, 2, 34.50, 92.00, 95.00, 58.00),
       (1, 28, 'M', 1.80, 85.00, 15.0, 4, 39.00, 105.00, 102.00, 60.00),
       (3, 35, 'F', 1.65, 70.00, 25.0, 1, 36.00, 95.00, 100.00, 60.50),
       (2, 22, NULL, 1.78, 80.00, 20.0, 3, 37.00, 98.00, 101.00, 58.00),
       (1, 40, 'F', 1.70, 65.30, 30.0, 2, 34.00, 93.00, 97.00, 56.50),
       (2, 27, 'M', 1.83, 90.00, 17.5, 4, 40.50, 108.00, 104.00, 62.00),
       (1, 23, 'F', 1.60, 58.50, 18.0, 3, 33.00, 90.00, 94.00, 55.00),
       (3, 45, 'M', 1.75, 70.00, 28.0, 1, 38.00, 99.00, 101.50, 59.00),
       (2, 50, 'I', 1.67, 72.00, 32.0, 2, 35.50, 94.00, 98.50, 60.00);

INSERT INTO "clientes" ("id_endereco", "id_dados_corporais", "id_telefone", "nome", "sobrenome", "email", "senha")
VALUES (1, 1, 1, 'Lucas', 'Silva', 'lucas.silva@email.com', '***sei que***'),
       (2, 2, 2, 'Ana', 'Pereira', 'ana.pereira@email.com', '***credencial no***'),
       (3, 3, 3, 'Carlos', 'Souza', 'carlos.souza@email.com', '***hard code é**'),
       (4, 4, 4, 'Juliana', 'Costa', 'juliana.costa@email.com', '***uma vulnerabilidade***'),
       (5, 5, 5, 'Alex', 'Mendes', 'alex.mendes@email.com', '***mas não sei***'),
       (6, 6, 6, 'Fernanda', 'Almeida', 'fernanda.almeida@email.com', '***como armazenar***'),
       (7, 7, 7, 'Renato', 'Martins', 'renato.martins@email.com', '***essas senhas**'),
       (8, 8, 8, 'Patricia', 'Lima', 'patricia.lima@email.com', '***nesse contexto***'),
       (9, 9, 9, 'José', 'Oliveira', 'jose.oliveira@email.com', '***e nem**'),
       (10, 10, 10, 'Kai', 'Rodrigues', 'kai.rodrigues@email.com', '***criptografar elas**');

INSERT INTO "veiculos" ("tipo", "placa", "modelo", "marca")
VALUES ('Moto', 'ABC-1234', 'CG 160', 'Honda'),
       ('Moto', 'XYZ-5678', 'XRE 300', 'Honda'),
       ('Moto', 'LMN-4321', 'Pop 110i', 'Honda'),
       ('Bicicleta', 'NA', 'Mountain Bike', 'Caloi'),
       ('Moto', 'DEF-8765', 'Biz 125', 'Honda'),
       ('Moto', 'EEE-9876', 'NXR 160', 'Honda'),
       ('Carro', 'FFF-6543', 'Civic', 'Honda'),
       ('Carro', 'GGG-5432', 'Kwid', 'Renault'),
       ('Moto', 'HHH-2121', 'Tornado 250', 'Honda'),
       ('Moto', 'III-4321', 'Ninja 500', 'Kawasaki');

INSERT INTO "cnhs" ("registro", "data_emissao", "data_validade", "categoria", "provisoria_ou_definitiva")
VALUES ('12345678901', '2022-05-10', '2027-05-10', 'A', 'D'),
       ('23456789012', '2021-11-20', '2026-11-20', 'AB', 'D'),
       ('34567890123', '2020-06-15', '2025-06-15', 'A', 'D'),
       ('45678901234', '2019-09-30', '2024-09-30', 'A', 'P'),
       ('56789012345', '2023-02-01', '2028-02-01', 'A', 'D'),
       ('67890123456', '2021-08-25', '2026-08-25', 'A', 'D'),
       ('78901234567', '2020-04-10', '2025-04-10', 'AB', 'P'),
       ('89012345678', '2018-07-13', '2023-07-13', 'AB', 'D'),
       ('90123456789', '2023-03-01', '2028-03-01', 'A', 'D'),
       ('01234567890', '2022-12-05', '2027-12-05', 'AC', 'D');

INSERT INTO "entregadores" ("id_telefone", "id_veiculo", "nome", "sobrenome", "cpf", "rg", "id_cnh")
VALUES (1, 1, 'João', 'Silva', '12345678901', '1234567890', 1),
       (2, 2, 'Maria', 'Oliveira', '23456789012', '2345678901', 2),
       (3, 3, 'Carlos', 'Pereira', '34567890123', '3456789012', 3),
       (4, 4, 'Ana', 'Santos', '45678901234', '4567890123', 4),
       (5, 5, 'Lucas', 'Costa', '56789012345', '5678901234', 5),
       (6, 6, 'Beatriz', 'Almeida', '67890123456', '6789012345', 6),
       (7, 7, 'Felipe', 'Martins', '78901234567', '7890123456', 7),
       (8, 8, 'Fernanda', 'Souza', '89012345678', '8901234567', 8),
       (9, 9, 'Eduardo', 'Lima', '90123456789', '9012345678', 9),
       (10, 10, 'Juliana', 'Barbosa', '01234567890', '0123456789', 10);

INSERT INTO "restaurantes" ("cnpj", "razao_social", "nome_fantasia", "id_endereco", "pedido_minimo", "taxa_entrega")
VALUES ('00.000.001/0001-01', 'Marombita Marmitaria LTDA', 'Marombita', 11, 30.00, 5.00),
       ('00.000.002/0001-02', 'VidaLeve Alimentos LTDA', 'VidaLeve', 12, 25.00, 7.00),
       ('00.000.003/0001-03', 'NutriSabor Alimentos LTDA', 'NutriSabor', 13, 20.00, NULL),
       ('00.000.004/0001-04', 'GreenPower Cozinha Saudável LTDA', 'GreenPower', 14, NULL, 10.00),
       ('00.000.005/0001-05', 'Empório Vila Duverdii LTDA', 'Empório Vila Duverdii', 15, 25.00, NULL);

INSERT INTO "macros" ("proteinas", "carboidratos", "gorduras")
VALUES (35, 40, 5),
       (30, 45, 10),
       (32, 42, 8),
       (40, 35, 12),
       (35, 40, 5),
       (10, 25, 6),
       (18, 50, 8),
       (35, 38, 6),
       (32, 42, 10),
       (25, 30, 4),
       (20, 45, 7),
       (15, 50, 7),
       (20, 40, 8),
       (18, 45, 6),
       (15, 40, 10);



INSERT INTO "ingredientes" ("ingrediente", "kosher", "halal", "alergeno")
VALUES ('Arroz', TRUE, TRUE, NULL),
       ('Frango', FALSE, TRUE, NULL),
       ('Legumes', TRUE, TRUE, NULL),
       ('Strogonoff', FALSE, FALSE, 'Leite'),
       ('Batata', TRUE, TRUE, NULL),
       ('Quinoa', TRUE, TRUE, NULL),
       ('Salmão', TRUE, TRUE, NULL),
       ('Batata Doce', TRUE, TRUE, NULL),
       ('Espaguete de Abobrinha', TRUE, TRUE, NULL),
       ('Molho de Tomate', TRUE, TRUE, NULL),
       ('Tofu', TRUE, TRUE, 'Soja'),
       ('Almôndegas de Grão-de-Bico', TRUE, TRUE, 'Glúten'),
       ('Arroz Integral', TRUE, TRUE, NULL),
       ('Tilápia', TRUE, TRUE, NULL),
       ('Carne Moída', FALSE, FALSE, NULL),
       ('Purê de Mandioquinha', TRUE, TRUE, 'Leite'),
       ('Aveia', TRUE, TRUE, 'Glúten'),
       ('Omelete de Claras', TRUE, TRUE, 'Ovos'),
       ('Espinafre', TRUE, TRUE, NULL),
       ('Hambúrguer de Lentilha', TRUE, TRUE, 'Glúten'),
       ('Arroz 7 Grãos', TRUE, TRUE, 'Glúten'),
       ('Curry', TRUE, TRUE, NULL),
       ('Arroz Basmati', TRUE, TRUE, NULL),
       ('Abóbora', TRUE, TRUE, NULL),
       ('Feijoada Vegana', TRUE, TRUE, NULL),
       ('Couve', TRUE, TRUE, NULL),
       ('Quibe', FALSE, FALSE, 'Glúten'),
       ('Homus', TRUE, TRUE, 'Gergelim'),
       ('Molho Pesto', FALSE, TRUE, 'Nozes'),
       ('Ervilhas', TRUE, TRUE, NULL),
       ('Brócolis', TRUE, TRUE, NULL),
       ('Purê de Abóbora', TRUE, TRUE, 'Leite'),
       ('Almôndegas de Frango', FALSE, TRUE, 'Glúten'),
       ('Espaguete Integral', TRUE, TRUE, 'Glúten');

INSERT INTO "pratos" ("nome", "descricao", "preco", "id_restaurante", "id_macro", "id_adicional", "url_imagem")
VALUES ('Frango e Arroz', '150g Arroz, 150g Frango, 50g Legumes', 30.00, 1, 1,
        NULL, 'https://example.com/images/frango_arroz.jpg'),
       ('Strogonoff de Carne e Arroz', '150g Arroz, 150g Strogonoff, 50g Legumes', 30.00, 1, 2, NULL,
        'https://example.com/images/strogonoff_carne.jpg'),
       ('Escondidinho de Frango', '150g Batata, 150g Frango, 50g Legumes', 30.00, 1, 3, NULL,
        'https://example.com/images/escondidinho_frango.jpg'),
       ('Salmão Grelhado com Quinoa', '150g Salmão, 150g Quinoa, 50g Legumes', 35.00, 2, 4, NULL,
        'https://example.com/images/salmao_quinoa.jpg'),
       ('Frango com Batata Doce', '150g Frango, 150g Batata Doce, 50g Legumes', 30.00, 2, 5, NULL,
        'https://example.com/images/frango_batata_doce.jpg'),
       ('Espaguete de Abobrinha ao Molho de Tomate', '150g Espaguete de Abobrinha, 150g Molho de Tomate, 50g Tofu',
        28.00, 2, 6, NULL, 'https://example.com/images/espaguete_abobrinha.jpg'),
       ('Almôndegas de Grão-de-Bico', '150g Almôndegas, 150g Arroz Integral, 50g Legumes', 27.00, 2, 7, NULL,
        'https://example.com/images/almondegas_graodebico.jpg'),
       ('Tilápia com Arroz Integral', '150g Tilápia, 150g Arroz Integral, 50g Brócolis', 32.00, 3, 8, NULL,
        'https://example.com/images/tilapia_arroz_integral.jpg'),
       ('Carne Moída com Purê de Mandioquinha', '150g Carne Moída, 150g Purê, 50g Legumes', 30.00, 3, 9, NULL,
        'https://example.com/images/carne_pure.jpg'),
       ('Omelete de Claras com Aveia', '150g Omelete, 150g Aveia, 50g Espinafre', 28.00, 3, 10, NULL,
        'https://example.com/images/omelete_aveia.jpg'),
       ('Hambúrguer de Lentilha com Arroz 7 Grãos', '150g Hambúrguer, 150g Arroz, 50g Legumes', 29.00, 3, 11, NULL,
        'https://example.com/images/hamburguer_lentilha.jpg'),
       ('Curry de Grão-de-Bico', '150g Curry, 150g Arroz Basmati, 50g Legumes', 28.00, 4, 12, NULL,
        'https://example.com/images/curry_graodebico.jpg'),
       ('Tofu Grelhado com Batata Doce', '150g Tofu, 150g Batata Doce, 50g Abóbora', 30.00, 4, 13, NULL,
        'https://example.com/images/tofu_batata_doce.jpg'),
       ('Feijoada Vegana com Couve', '150g Feijoada, 150g Arroz Integral, 50g Couve', 29.00, 4, 14, NULL,
        'https://example.com/images/feijoada_vegana.jpg'),
       ('Quibe de Abóbora com Homus', '150g Quibe, 150g Arroz Integral, 50g Homus', 27.00, 4, 15, NULL,
        'https://example.com/images/quibe_abobora.jpg');

-- ingredientes_pratos TÁ DESRESPEITANDO NOT NULL
-- [23502] ERROR: null value in column "quantidade" of relation "ingredientes_pratos" violates not-null constraint Detail: Failing row contains (2, 1, 1, null, null, 2024-12-05 18:22:35.452689+00, 2024-12-05 18:22:35.452689+00, null).
INSERT INTO "ingredientes_pratos" ("id_prato", "id_ingrediente", "quantidade", "unidade_de_medida")
VALUES
    -- Prato 1: Frango e Arroz
    (1, 1, 150.00, 'gramas'),   -- Arroz
    (1, 2, 150.00, 'gramas'),   -- Frango
    (1, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 2: Strogonoff de Carne e Arroz
    (2, 1, 150.00, 'gramas'),   -- Arroz
    (2, 4, 150.00, 'gramas'),   -- Strogonoff
    (2, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 3: Escondidinho de Frango
    (3, 5, 150.00, 'gramas'),   -- Batata
    (3, 2, 150.00, 'gramas'),   -- Frango
    (3, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 4: Salmão Grelhado com Quinoa
    (4, 7, 150.00, 'gramas'),   -- Salmão
    (4, 6, 150.00, 'gramas'),   -- Quinoa
    (4, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 5: Frango com Batata Doce
    (5, 2, 150.00, 'gramas'),   -- Frango
    (5, 8, 150.00, 'gramas'),   -- Batata Doce
    (5, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 6: Espaguete de Abobrinha ao Molho de Tomate
    (6, 9, 150.00, 'gramas'),   -- Espaguete de Abobrinha
    (6, 10, 150.00, 'gramas'),  -- Molho de Tomate
    (6, 11, 50.00, 'gramas'),   -- Tofu

    -- Prato 7: Almôndegas de Grão-de-Bico
    (7, 12, 150.00, 'gramas'),  -- Almôndegas de Grão-de-Bico
    (7, 13, 150.00, 'gramas'),  -- Arroz Integral
    (7, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 8: Tilápia com Arroz Integral
    (8, 14, 150.00, 'gramas'),  -- Tilápia
    (8, 13, 150.00, 'gramas'),  -- Arroz Integral
    (8, 31, 50.00, 'gramas'),   -- Brócolis

    -- Prato 9: Carne Moída com Purê de Mandioquinha
    (9, 15, 150.00, 'gramas'),  -- Carne Moída
    (9, 16, 150.00, 'gramas'),  -- Purê de Mandioquinha
    (9, 3, 50.00, 'gramas'),    -- Legumes

    -- Prato 10: Omelete de Claras com Aveia
    (10, 18, 150.00, 'gramas'), -- Omelete de Claras
    (10, 17, 150.00, 'gramas'), -- Aveia
    (10, 19, 50.00, 'gramas'),  -- Espinafre

    -- Prato 11: Hambúrguer de Lentilha com Arroz 7 Grãos
    (11, 20, 150.00, 'gramas'), -- Hambúrguer de Lentilha
    (11, 21, 150.00, 'gramas'), -- Arroz 7 Grãos
    (11, 3, 50.00, 'gramas'),   -- Legumes

    -- Prato 12: Curry de Grão-de-Bico
    (12, 22, 150.00, 'gramas'), -- Curry
    (12, 23, 150.00, 'gramas'), -- Arroz Basmati
    (12, 3, 50.00, 'gramas'),   -- Legumes

    -- Prato 13: Tofu Grelhado com Batata Doce
    (13, 11, 150.00, 'gramas'), -- Tofu
    (13, 8, 150.00, 'gramas'),  -- Batata Doce
    (13, 24, 50.00, 'gramas'),  -- Abóbora

    -- Prato 14: Feijoada Vegana com Couve
    (14, 25, 150.00, 'gramas'), -- Feijoada Vegana
    (14, 13, 150.00, 'gramas'), -- Arroz Integral
    (14, 26, 50.00, 'gramas'),  -- Couve

    -- Prato 15: Quibe de Abóbora com Homus
    (15, 27, 150.00, 'gramas'), -- Quibe
    (15, 13, 150.00, 'gramas'), -- Arroz Integral
    (15, 28, 50.00, 'gramas'); -- Homus


INSERT INTO "status_pedidos" ("status")
VALUES ('Aguardando Confirmação'),
       ('Em Preparação'),
       ('Aguardando Entregador'),
       ('Em Rota de Entrega'),
       ('Entregue'),
       ('Cancelado'),
       ('Recusado'),
       ('Finalizado'),
       ('Em Atraso'),
       ('Devolvido');

INSERT INTO "pedidos" ("id_cliente", "id_restaurante", "id_entregador", "id_status_entrega")
VALUES (1, 1, 1, 5),
       (2, 2, 2, 5),
       (3, 3, 3, 5),
       (4, 4, 4, 5),
       (5, 5, 5, 5),
       (6, 1, 6, 4),
       (7, 2, 7, 4),
       (8, 3, 8, 3),
       (9, 4, 9, 2),
       (10, 5, 10, 1),
       (1, 2, 1, 5),
       (2, 3, 2, 5),
       (3, 4, 3, 5),
       (4, 5, 4, 5),
       (5, 1, 5, 5);

INSERT INTO "metodos_pagamentos" ("metodo")
VALUES ('Crédito'),
       ('Débito'),
       ('Dinheiro'),
       ('Pix'),
       ('Vale-refeição');

-- "status_pagamentos"
INSERT INTO "status_pagamentos" ("status")
VALUES ('Autorizado'),
       ('Processando'),
       ('Pendente'),
       ('Cancelado'),
       ('Negado');

INSERT INTO "pagamentos" ("data_pagamento", "valor_pago", "metodo_pagamento", "status_pagamento")
VALUES (CURRENT_TIMESTAMP, 30.00, 1, 1),
       (CURRENT_TIMESTAMP, 35.00, 2, 1),
       (CURRENT_TIMESTAMP, 28.00, 3, 1),
       (CURRENT_TIMESTAMP, 32.00, 4, 1),
       (CURRENT_TIMESTAMP, 30.00, 5, 1),
       (CURRENT_TIMESTAMP, 28.00, 1, 1),
       (CURRENT_TIMESTAMP, 29.00, 2, 1),
       (CURRENT_TIMESTAMP, 28.00, 3, 2),
       (CURRENT_TIMESTAMP, 30.00, 4, 2),
       (CURRENT_TIMESTAMP, 29.00, 5, 3),
       (CURRENT_TIMESTAMP, 27.00, 1, 1),
       (CURRENT_TIMESTAMP, 30.00, 2, 1),
       (CURRENT_TIMESTAMP, 32.00, 3, 1),
       (CURRENT_TIMESTAMP, 30.00, 4, 1),
       (CURRENT_TIMESTAMP, 28.00, 5, 1);


-- INSERIR EM TABELA pagamentos_pedidos
INSERT INTO "pagamentos_pedidos" ("id_pagamento", "id_pedido")
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15);

-- INSERIR EM TABELA estornos
INSERT INTO "estornos" ("id_pagamento", "valor", "motivo")
VALUES (7, 30.00, 'Pedido incorreto'),
       (8, 35.00, 'Pedido incirreto');

-- INSERIR EM TABELA avaliacoes_restaurantes
INSERT INTO "avaliacoes_restaurantes" ("id_cliente", "id_restaurante", "nota", "comentario")
VALUES (1, 1, 5, 'Excelente comida e serviço!'),
       (2, 2, 4, 'Muito bom, mas poderia ser mais rápido.'),
       (3, 3, 3, 'Comida boa, mas entrega atrasada.'),
       (4, 4, 5, 'Adorei! Vou pedir novamente.'),
       (5, 5, 4, 'Bom, mas poderia ter mais opções no cardápio.');


-- INSERIR EM TABELA avaliacoes_pratos
-- ERROR: insert or update on table "avaliacoes_pratos" violates foreign key constraint "fk_avaliacoes_pratos1" Detail: Key (id_prato)=(1) is not present in table "pratos"
INSERT INTO "avaliacoes_pratos" ("id_cliente", "id_prato", "nota", "comentario")
VALUES (1, 1, 5, 'Delicioso!'),
       (2, 3, 4, 'Muito bom, mas um pouco salgado.'),
       (3, 5, 3, 'Gostei, mas poderia ser mais temperado.'),
       (4, 7, 5, 'Perfeito!'),
       (5, 10, 4, 'Bom, mas a porção poderia ser maior.');


-- INSERIR EM TABELA avaliacoes_entregadores
INSERT INTO "avaliacoes_entregadores" ("id_cliente", "id_entregador", "nota", "comentario")
VALUES (1, 1, 5, 'Entregador muito educado e pontual.'),
       (2, 2, 4, 'Bom serviço, mas poderia ser mais rápido.'),
       (3, 3, 3, 'Entrega atrasada, mas entregador educado.'),
       (4, 4, 5, 'Excelente serviço!'),
       (5, 5, 4, 'Bom, mas poderia ser mais rápido.');



INSERT INTO "restricoes_alimentares" ("id_cliente", "id_ingrediente")
VALUES (1, 4),  -- Cliente 1 não pode comer strogonoff
       (2, 11), -- Cliente 2 não pode comer tofu
       (3, 15), -- Cliente 3 não pode comer carne moída
       (4, 7),  -- Cliente 4 não pode comer salmão
       (5, 8),  -- Cliente 5 não pode comer batata doce
       (6, 12), -- Cliente 6 não pode comer grão-de-bico
       (7, 14), -- Cliente 7 não pode comer tilápia
       (8, 20), -- Cliente 8 não pode comer lentilha
       (9, 25), -- Cliente 9 não pode comer feijoada
       (10, 28);
-- Cliente 10 não pode comer homus


-- INSERIR EM TABELA cupons
INSERT INTO "cupons" ("codigo", "descricao", "desconto", "data_inicio", "data_fim", "id_restaurante")
VALUES ('PROMO10', 'Desconto de 10%', 10.00, '2023-01-01', '2023-12-31', 1),
       ('PROMO20', 'Desconto de 20%', 20.00, '2023-01-01', '2023-12-31', 2),
       ('PROMO30', 'Desconto de 30%', 30.00, '2023-01-01', '2023-12-31', 3),
       ('PROMO40', 'Desconto de 40%', 40.00, '2023-01-01', '2023-12-31', 4),
       ('PROMO50', 'Desconto de 50%', 50.00, '2023-01-01', '2023-12-31', 5);

-- INSERIR EM TABELA preferencias
-- ERROR: insert or update on table "preferencias" violates foreign key constraint "fk_preferencias1" Detail: Key (id_prato)=(2) is not present in table "pratos".
INSERT INTO "preferencias" ("id_cliente", "id_prato", "filtro_usado")
VALUES (1, NULL, 'Fit'),
       (2, NULL, 'Vegano'),
       (2, NULL, 'Halal'),
       (4, 2, 'Janta Sem Glúten'),
       (5, 5, 'Sem Lactose');


-- PARA REFAZER MAS SEI N
INSERT INTO "necessidades_nutricionais"
("tipo_refeicao", "calorias", "proteinas", "carboidratos", "fibras", "gorduras_trans", "sodio", "gorduras_saturadas")
VALUES ('Café da Manhã', 400, 20, 50, 5, 0, 200, 2),
       ('Almoço', 700, 35, 80, 8, 0, 400, 4),
       ('Lanche', 300, 15, 40, 4, 0, 150, 2),
       ('Janta', 600, 30, 70, 7, 0, 350, 3),
       ('Pré-treino', 250, 20, 30, 3, 0, 100, 1),
       ('Pós-treino', 350, 25, 45, 4, 0, 150, 2),
       ('Ceia', 200, 10, 25, 3, 0, 100, 1),
       ('Colação', 150, 8, 20, 2, 0, 80, 1),
       ('Pré-competição', 450, 25, 60, 5, 0, 200, 2),
       ('Recuperação', 500, 30, 65, 6, 0, 250, 3);

-- INSERIR EM TABELA necessidades_clientes
-- ESSE TBM
INSERT INTO "necessidades_clientes" ("id_necessidades_nutricionais", "id_cliente")
VALUES (1, 1), -- Lucas: Café da Manhã
       (2, 2), -- Ana: Almoço
       (3, 3), -- Carlos: Lanche
       (4, 4), -- Juliana: Janta
       (5, 5), -- Alex: Pré-treino
       (6, 6), -- Fernanda: Pós-treino
       (7, 7), -- Renato: Ceia
       (8, 8), -- Patricia: Colação
       (9, 9), -- José: Pré-competição
       (10, 10);
-- Kai: Recuperação

-- INSERIR EM TABELA pedidos_pratos
-- [23503] ERROR: insert or update on table "pedidos_pratos" violates foreign key constraint "fk_pedidos_pratos1" Detail: Key (id_prato)=(1) is not present in table "pratos".
INSERT INTO "pedidos_pratos" ("id_pedido", "id_prato", "quantidade")
VALUES (1, 1, 1),   -- Pedido 1: Frango e Arroz
       (2, 2, 1),   -- Pedido 2: Strogonoff de Carne e Arroz
       (2, 2, 3),   -- Pedido 2: Frango com Batata Doce
       (3, 3, 2),   -- Pedido 3: Escondidinho de Frango
       (4, 4, 1),   -- Pedido 4: Salmão Grelhado com Quinoa
       (4, 4, 1),   -- Pedido 4: Tilápia com Arroz Integral
       (5, 5, 1),   -- Pedido 5: Frango com Batata Doce
       (6, 6, 1),   -- Pedido 6: Espaguete de Abobrinha ao Molho de Tomate
       (6, 6, 1),   -- Pedido 6: Almôndegas de Grão de Bico
       (7, 7, 2),   -- Pedido 7: Almôndegas de Grão-de-Bico
       (8, 8, 1),   -- Pedido 8: Tilápia com Arroz Integral
       (9, 9, 3),   -- Pedido 9: Carne Moída com Purê de Mandioquinha
       (10, 10, 2), -- Pedido 10: Omelete de Claras com Aveia
       (11, 11, 1), -- Pedido 11: Hambúrguer de Lentilha com Arroz 7 Grãos
       (12, 12, 1), -- Pedido 12: Curry de Grão-de-Bico
       (13, 13, 1), -- Pedido 13: Tofu Grelhado com Batata Doce
       (13, 13, 1), -- Pedido 13: Strogonoff de Frango com Arroz Integral
       (14, 14, 1), -- Pedido 14: Feijoada Vegana com Couve
       (15, 15, 2), -- Pedido 15: Quibe de Abóbora com Homus
       (15, 15, 1); -- Pedido 15: Almôndegas de Grão de Bico




