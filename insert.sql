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
VALUES (1, 1, 1, 'Lucas', 'Silva', 'lucas.silva@email.com', '**********'),
       (2, 2, 2, 'Ana', 'Pereira', 'ana.pereira@email.com', '************'),
       (3, 3, 3, 'Carlos', 'Souza', 'carlos.souza@email.com', '*********'),
       (4, 4, 4, 'Juliana', 'Costa', 'juliana.costa@email.com', '***********'),
       (5, 5, 5, 'Alex', 'Mendes', 'alex.mendes@email.com', '********'),
       (6, 6, 6, 'Fernanda', 'Almeida', 'fernanda.almeida@email.com', '************'),
       (7, 7, 7, 'Renato', 'Martins', 'renato.martins@email.com', '**********'),
       (8, 8, 8, 'Patricia', 'Lima', 'patricia.lima@email.com', '********'),
       (9, 9, 9, 'José', 'Oliveira', 'jose.oliveira@email.com', '*********'),
       (10, 10, 10, 'Kai', 'Rodrigues', 'kai.rodrigues@email.com', '***********');

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
VALUES (1, 1, 'João', 'Silva', '12345678901', 'MG1234567', 1),
       (2, 2, 'Maria', 'Oliveira', '23456789012', 'SP2345678', 2),
       (3, 3, 'Carlos', 'Pereira', '34567890123', 'RJ3456789', 3),
       (4, 4, 'Ana', 'Santos', '45678901234', 'BA4567890', 4),
       (5, 5, 'Lucas', 'Costa', '56789012345', 'MG5678901', 5),
       (6, 6, 'Beatriz', 'Almeida', '67890123456', 'SP6789012', 6),
       (7, 7, 'Felipe', 'Martins', '78901234567', 'RJ7890123', 7),
       (8, 8, 'Fernanda', 'Souza', '89012345678', 'BA8901234', 8),
       (9, 9, 'Eduardo', 'Lima', '90123456789', 'MG9012345', 9),
       (10, 10, 'Juliana', 'Barbosa', '01234567890', 'SP0123456', 10);

INSERT INTO "restaurantes" ("cnpj", "razao_social", "nome_fantasia", "id_endereco", "taxa_entrega")
VALUES
('00.000.001/0001-01', 'Marombita Marmitaria LTDA', 'Marombita', 11, 30.00),
('00.000.002/0001-02', 'VidaLeve Alimentos LTDA', 'VidaLeve', 12, 25.00),
('00.000.003/0001-03', 'NutriSabor Alimentos LTDA', 'NutriSabor', 13, 20.00),
('00.000.004/0001-04', 'GreenPower Cozinha Saudável LTDA', 'GreenPower', 14, 30.00),
('00.000.005/0001-05', 'Empório Vila Duverdii LTDA', 'Empório Vila Duverdii', 15, 25.00);

INSERT INTO "macros" ("proteinas", "carboidratos", "gorduras")
VALUES
(35, 40, 5),
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
(15, 40, 10),
(35, 40, 5),
(35, 35, 6),
(30, 42, 8),
(18, 45, 10),
(30, 40, 7);


-- INSERIR EM TABELA ADICIONAIS


INSERT INTO "categorias" ("nome", "descricao")
VALUES
('Fit', 'Alimentação saudável e balanceada'),
('Vegano', 'Pratos sem ingredientes de origem animal'),
('Vegetariano', 'Pratos sem carne'),
('Sem Glúten', 'Pratos livres de glúten'),
('Sem Lactose', 'Pratos sem lactose'),
('Congelado', 'Pratos congelados para aquecimento'),
('Quente', 'Pratos prontos para consumo'),
('Almoço', 'Opções para o horário de almoço'),
('Janta', 'Opções para o jantar'),
('Lanche', 'Lanches e petiscos');

INSERT INTO "ingredientes" ("nome", "descricao")
VALUES
('Arroz', 'Arroz branco cozido'),
('Frango', 'Peito de frango grelhado'),
('Legumes', 'Mix de legumes cozidos'),
('Strogonoff', 'Strogonoff de carne'),
('Escondidinho', 'Escondidinho de batata'),
('Quinoa', 'Quinoa cozida'),
('Salmão', 'Salmão grelhado'),
('Batata Doce', 'Batata doce cozida'),
('Espaguete de Abobrinha', 'Espaguete feito com abobrinha'),
('Molho de Tomate', 'Molho de tomate caseiro'),
('Tofu', 'Tofu grelhado'),
('Almôndegas de Grão-de-Bico', 'Almôndegas veganas'),
('Arroz Integral', 'Arroz integral cozido'),
('Tilápia', 'Tilápia grelhada'),
('Carne Moída', 'Carne moída bovina'),
('Purê de Mandioquinha', 'Purê de mandioquinha'),
('Aveia', 'Aveia em flocos'),
('Omelete de Claras', 'Omelete feito com claras de ovo'),
('Espinafre', 'Espinafre refogado'),
('Hambúrguer de Lentilha', 'Hambúrguer vegano'),
('Arroz 7 Grãos', 'Arroz com sete grãos'),
('Curry', 'Curry de grão-de-bico'),
('Arroz Basmati', 'Arroz basmati cozido'),
('Abóbora', 'Abóbora assada'),
('Feijoada Vegana', 'Feijoada sem carne'),
('Couve', 'Couve refogada'),
('Quibe', 'Quibe de quinoa ou abóbora'),
('Homus', 'Pasta de grão-de-bico'),
('Molho Pesto', 'Molho pesto caseiro'),
('Ervilhas', 'Ervilhas frescas'),
('Brócolis', 'Brócolis cozido'),
('Purê de Abóbora', 'Purê de abóbora'),
('Almôndegas de Frango', 'Almôndegas de frango'),
('Espaguete Integral', 'Espaguete feito com farinha integral');

INSERT INTO "pratos" ("nome", "descricao", "preco", "id_restaurante", "id_macros")
VALUES
('Frango e Arroz', '150g Arroz, 150g Frango, 50g Legumes', 30.00, 1, 1),
('Strogonoff de Carne e Arroz', '150g Arroz, 150g Strogonoff, 50g Legumes', 30.00, 1, 2),
('Escondidinho de Frango', '150g Escondidinho, 150g Frango, 50g Legumes', 30.00, 1, 3),
('Salmão Grelhado com Quinoa', '150g Salmão, 150g Quinoa, 50g Legumes', 35.00, 2, 4),
('Frango com Batata Doce', '150g Frango, 150g Batata Doce, 50g Legumes', 30.00, 2, 5),
('Espaguete de Abobrinha ao Molho de Tomate', '150g Espaguete de Abobrinha, 150g Molho de Tomate, 50g Tofu', 28.00, 2, 6),
('Almôndegas de Grão-de-Bico', '150g Almôndegas, 150g Arroz Integral, 50g Legumes', 27.00, 2, 7),
('Tilápia com Arroz Integral', '150g Tilápia, 150g Arroz Integral, 50g Brócolis', 32.00, 3, 8),
('Carne Moída com Purê de Mandioquinha', '150g Carne Moída, 150g Purê, 50g Legumes', 30.00, 3, 9),
('Omelete de Claras com Aveia', '150g Omelete, 150g Aveia, 50g Espinafre', 28.00, 3, 10),
('Hambúrguer de Lentilha com Arroz 7 Grãos', '150g Hambúrguer, 150g Arroz, 50g Legumes', 29.00, 3, 11),
('Curry de Grão-de-Bico', '150g Curry, 150g Arroz Basmati, 50g Legumes', 28.00, 4, 12),
('Tofu Grelhado com Batata Doce', '150g Tofu, 150g Batata Doce, 50g Abóbora', 30.00, 4, 13),
('Feijoada Vegana com Couve', '150g Feijoada, 150g Arroz Integral, 50g Couve', 29.00, 4, 14),
('Quibe de Abóbora com Homus', '150g Quibe, 150g Arroz Integral, 50g Homus', 27.00, 4, 15),
('Frango com Batata Doce e Brócolis', '150g Frango, 150g Batata Doce, 50g Brócolis', 30.00, 5, 16),
('Tilápia com Purê de Abóbora', '150g Tilápia, 150g Purê, 50g Couve', 32.00, 5, 17),
('Strogonoff de Frango com Arroz Integral', '150g Strogonoff, 150g Arroz Integral, 50g Ervilhas', 30.00, 5, 18),
('Quibe de Quinoa com Homus', '150g Quibe, 150g Arroz 7 Grãos, 50g Homus', 28.00, 5, 19),
('Almôndegas de Frango com Espaguete Integral', '150g Almôndegas, 150g Espaguete Integral, 50g Molho Pesto', 30.00, 5, 20);

-- ingredientes_pratos
INSERT INTO "ingredientes_pratos" ("id_prato", "id_ingrediente")
VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 4), (2, 3),
(3, 5), (3, 2), (3, 3),
(4, 7), (4, 6), (4, 3),
(5, 2), (5, 8), (5, 3),
(6, 9), (6, 10), (6, 11),
(7, 12), (7, 13), (7, 3),
(8, 14), (8, 13), (8, 31),
(9, 15), (9, 16), (9, 3),
(10, 18), (10, 17), (10, 19),
(11, 20), (11, 21), (11, 3),
(12, 22), (12, 23), (12, 3),
(13, 11), (13, 8), (13, 24),
(14, 25), (14, 13), (14, 26),
(15, 27), (15, 13), (15, 28),
(16, 2), (16, 8), (16, 31),
(17, 14), (17, 32), (17, 26),
(18, 4), (18, 13), (18, 30),
(19, 27), (19, 21), (19, 28),
(20, 33), (20, 34), (20, 29);

INSERT INTO "status_pedidos" ("status")
VALUES 
('Aguardando Confirmação'),
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
VALUES 
(1, 1, 1, 5),
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

INSERT INTO "metodos_pagamentos" ("método")
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
VALUES 
(CURRENT_TIMESTAMP, 30.00, 1, 1),
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
-- INSERIR EM TABELA estornos
-- INSERIR EM TABELA avaliacoes_restaurantes
-- INSERIR EM TABELA avaliacoes_pratos
-- INSERIR EM TABELA avaliacoes_entregadores


INSERT INTO "restricoes_alimentares" ("id_cliente", "id_ingrediente")
VALUES 
(1, 4),  -- Cliente 1 não pode comer strogonoff
(2, 11), -- Cliente 2 não pode comer tofu
(3, 15), -- Cliente 3 não pode comer carne moída
(4, 7),  -- Cliente 4 não pode comer salmão
(5, 8),  -- Cliente 5 não pode comer batata doce
(6, 12), -- Cliente 6 não pode comer grão-de-bico
(7, 14), -- Cliente 7 não pode comer tilápia
(8, 20), -- Cliente 8 não pode comer lentilha
(9, 25), -- Cliente 9 não pode comer feijoada
(10, 28); -- Cliente 10 não pode comer homus



-- INSERIR EM TABELA cupons
-- INSERIR EM TABELA preferencias



INSERT INTO "necessidades_nutricionais" 
("tipo_refeicao", "calorias", "proteinas", "carboidratos", "fibras", "gorduras_trans", "sodio", "gorduras_saturadas")
VALUES 
('Café da Manhã', 400, 20, 50, 5, 0, 200, 2),
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
-- INSERIR EM TABELA pedidos_pratos