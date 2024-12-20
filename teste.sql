


-- INSERIR UM UNICO CLIENTE

BEGIN;

WITH telefone_inserido AS (
    INSERT INTO telefones (numero, id_tipo_telefone)
    VALUES ('44 9999-8888', 5)
    RETURNING id
),
dados_corporais_inserido AS (
    INSERT INTO dados_corporais (objetivo, idade, sexo, altura, peso, porcentagem_gordura, nivel_atividade)
    VALUES (1, '18', 'M', 1.88, 95, 22, 2)
    RETURNING id
),
endereco_inserido AS (
    INSERT INTO enderecos (latitude, longitude, estado, cidade, bairro, rua, numero, complemento, cep)
    VALUES (125.45, 125.45, 'PR', 'Cidade1', 'Bairro1', 'Rua1', '5', 'Complemento', '98765432')
    RETURNING id
)
INSERT INTO clientes (id_telefone, id_dados_corporais, id_endereco, nome, sobrenome, email, senha, ativo)
VALUES (
    (SELECT id FROM telefone_inserido),
    (SELECT id FROM dados_corporais_inserido),
    (SELECT id FROM endereco_inserido),
    'Fernando', 'Castelo', 'fercastelo@mail.com', '098765432', True
);

COMMIT;

SELECT *
FROM clientes
ORDER BY id DESC
LIMIT 1;

