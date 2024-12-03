INSERT INTO tipos_telefone (tipo)
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
       ('(41) 4764-5423', 2),
       ('(41) 3045-2132', 2),
       ('(41) 3422-0234', 2),
       ('(41) 3034-2953', 2),
       ('(41) 3045-1823', 2),
       ('(41) 4391-1053', 2);

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
       (-25.4595, -49.2890, 'PR', 'Curitiba', 'Santa Felicidade', 'Rua São Braz', '1000', 'Loja 12', '81810-030'),
       (-25.4590, -49.2610, 'PR', 'Curitiba', 'Batel', 'Av. do Batel', '350', 'Piso Térreo', '80420-060'),
       (-25.4455, -49.2730, 'PR', 'Curitiba', 'Cabral', 'Rua Bruno Filgueira', '450', 'Apto 301', '80035-180'),
       (-25.4690, -49.2655, 'PR', 'Curitiba', 'Vila Izabel', 'Rua Prof. João Doetzer', '320', 'Loja A', '81230-020'),
       (-25.4430, -49.2835, 'PR', 'Curitiba', 'Cristo Rei', 'Rua Francisco Rocha', '850', 'Piso 1', '80060-080');

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

-- INSERT INTO "restaurantes" ("cnpj", "razao_social", "nome_fantasia", "endereco", "pedido_minimo")
-- VALUES ('12.345.678/0001-90', 'Restaurante do Cabral Ltda', 'Restaurante Cabral', 11, 20.00),
--        ('23.456.789/0001-10', 'Centro Cívico Sabor Ltda', 'Cívico Delícias', 12, 31.00),
--        ('34.567.890/0001-20', 'Ahú Restaurante e Cia', 'Ahú Delights', 13, 22.00),
--        ('45.678.901/0001-30', 'Rebouças Grill Ltda', 'Grill Rebouças', 14, 30.00),
--        ('56.789.012/0001-40', 'Santa Felicidade Food', 'Santa Sabor', 15, 15.00),
--        ('67.890.123/0001-50', 'Batel Bistrô', 'Bistrô Batel', 16, 35.00),
--        ('78.901.234/0001-60', 'Curitiba Culinária', 'Curitiba Sabor', 17, 30.00),
--        ('89.012.345/0001-70', 'Vila Velha Restaurante', 'Vila do Sabor', 18, 15.00),
--        ('90.123.456/0001-80', 'Jardim Botânico Gastronomia', 'Botânico Grill', 19, 23.00),
--        ('01.234.567/0001-90', 'Mercês Saboroso', 'Mercês Delícias', 20, 19.00);
--
-- -- Ingredientes
-- INSERT INTO "ingredientes" ("ingrediente", "quantidade", "unidade_de_medida", "kosher", "halal", "alergeno")
-- VALUES ('Arroz', 500, 'gramas', true, true, NULL),
--        ('Feijão', 300, 'gramas', true, true, 'Glúten'),
--        ('Frango', 800, 'gramas', true, true, 'Frutos do mar'),
--        ('Carne', 1000, 'gramas', true, true, 'Soja'),
--        ('Tomate', 400, 'gramas', true, true, NULL),
--        ('Cebola', 150, 'gramas', true, true, NULL),
--        ('Batata', 600, 'gramas', true, true, 'Glúten'),
--        ('Alho', 50, 'gramas', true, true, NULL),
--        ('Queijo', 200, 'gramas', true, true, 'Lactose'),
--        ('Sal', 50, 'gramas', true, true, NULL);
--
-- INSERT INTO "macros" ("nome", "carboidratos", "proteinas", "gorduras_saturadas", "fibras", "sodio")
-- VALUES ('Arroz', 78.5, 7.5, 0.4, 1.2, 0.02),
--        ('Feijão', 27.4, 8.7, 0.1, 8.2, 0.09),
--        ('Frango', 0, 31.2, 3.6, 0, 0.07),
--        ('Carne', 0, 26.8, 9.6, 0, 0.09),
--        ('Tomate', 3.9, 0.9, 0.2, 1.2, 0.01),
--        ('Cebola', 9.3, 1.1, 0.1, 1.7, 0.02),
--        ('Batata', 17.5, 2.0, 0.1, 2.2, 0.01),
--        ('Alho', 33.1, 6.4, 0.1, 2.1, 0.02),
--        ('Queijo', 1.3, 20.0, 13.0, 0, 0.09),
--        ('Sal', 0, 0, 0, 0, 38.0);
--
-- -- Categorias
-- INSERT INTO "categorias" ("nome", "descricao")
-- VALUES ('Quente', 'Pratos servidos quentes'),
--        ('Salgado', 'Pratos salgados, como salgadinhos e petiscos'),
--        ('Doce', 'Sobremesas e doces em geral'),
--        ('Lanche', 'Pratos rápidos, como sanduíches e wraps'),
--        ('Congelado', 'Pratos congelados, aquecer para o consumo');
--
--
-- -- Receitas
-- INSERT INTO "receitas" ("id_restaurante", "id_ingrediente", "id_macro", "nome", "categoria", "descricao",
--                         "tempo_preparo", "porcoes", "instrucoes")
-- VALUES (1, 1, 1, 'Arroz com Feijão', 1, 'Arroz e feijão cozidos', 30, 4,
--         'Cozinhe o arroz e feijão separadamente, depois sirva'),
--        (1, 2, 2, 'Feijão Tropeiro', 1, 'Feijão com carne e arroz', 40, 4, 'Frite a carne e misture com feijão e arroz'),
--        (2, 3, 3, 'Frango Grelhado', 1, 'Frango grelhado com tempero especial', 30, 2,
--         'Tempere o frango e grelhe até dourar'),
--        (3, 4, 4, 'Carne de Panela', 1, 'Carne cozida com temperos', 60, 6, 'Cozinhe a carne com cebolas e alho'),
--        (4, 5, 5, 'Molho de Tomate Caseiro', 1, 'Molho de tomate com temperos', 25, 4,
--         'Cozinhe o tomate com alho, cebola e temperos'),
--        (5, 6, 6, 'Cebola Caramelizada', 2, 'Cebola doce caramelizada', 20, 2,
--         'Frite a cebola até dourar e caramelizar'),
--        (6, 7, 7, 'Batata Frita', 2, 'Batatas fritas crocantes', 15, 4, 'Corte as batatas em tiras e frite até dourar'),
--        (7, 8, 8, 'Alho Frito', 2, 'Alho frito crocante', 10, 3, 'Frite o alho até ficar crocante e sirva'),
--        (8, 9, 9, 'Queijo Quente', 3, 'Sanduíche de queijo grelhado', 15, 2,
--         'Coloque o queijo entre duas fatias de pão e grelhe'),
--        (9, 10, 10, 'Salada de Alface', 4, 'Salada fresca de alface', 5, 2, 'Misture as folhas de alface com tempero');
