CREATE TABLE IF NOT EXISTS "tipos_telefone"
(
    "id"            SERIAL PRIMARY KEY,
    "tipo"          varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "telefones"
(
    "id"               SERIAL PRIMARY KEY,
    "numero"           varchar(20)              NOT NULL,
    "id_tipo_telefone" integer                  NOT NULL, -- SELECT * FROM tipos_telefone
    "criado_em"        timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"    timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"      timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_telefones
        FOREIGN KEY (id_tipo_telefone)
            REFERENCES tipos_telefone (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "enderecos"
(
    "id"            SERIAL PRIMARY KEY,
    "latitude"      numeric(9, 6)            NOT NULL,
    "longitude"     numeric(9, 6)            NOT NULL,
    "estado"        varchar(2)               NOT NULL,
    "cidade"        varchar(255)             NOT NULL,
    "bairro"        varchar(255)             NOT NULL,
    "rua"           varchar(255)             NOT NULL,
    "numero"        varchar(255)             NOT NULL,
    "complemento"   varchar(255)             NOT NULL,
    "cep"           varchar(9)               NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "objetivos"
(
    "id"            SERIAL PRIMARY KEY,
    "nome_objetivo" varchar(255)             NOT NULL,
    "descricao"     varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "niveis_atividade"
(
    "id"            SERIAL PRIMARY KEY,
    "nome"          varchar(255)             NOT NULL,
    "descricao"     varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);


-- CREATE TYPE sex AS ENUM ('M', 'F', 'I');

CREATE TABLE IF NOT EXISTS "dados_corporais"
(
    "id"                     SERIAL PRIMARY KEY,
    "objetivo"               integer                  NOT NULL, -- SELECT * FROM objetivos
    "idade"                  integer                  NOT NULL,
    "sexo"                   sex,
    "altura"                 numeric(10, 2)           NOT NULL,
    "peso"                   numeric(5, 2)            NOT NULL,
    "porcentagem_gordura"    numeric(10, 2),
    "nivel_atividade"        integer                  NOT NULL, -- SELECT * FROM niveis_atividade
    "circunferencia_pescoco" numeric(10, 2),
    "circunferencia_peito"   numeric(10, 2),
    "circunferencia_quadril" numeric(10, 2),
    "circunferencia_coxa"    numeric(10, 2),
    "criado_em"              timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"          timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"            timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_dados_corporais
        FOREIGN KEY (objetivo)
            REFERENCES objetivos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_dados_corporais1
        FOREIGN KEY (nivel_atividade)
            REFERENCES niveis_atividade (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "restaurantes"
(
    "id"            SERIAL PRIMARY KEY,
    "id_telefone" integer NOT NULL, -- "numero", "id_tipo_telefone" (SELECT * FROM tipos_telefone)
    "cnpj"          varchar(20)              NOT NULL,
    "razao_social"  varchar(255)             NOT NULL,
    "nome_fantasia" varchar(255)             NOT NULL,
    "id_endereco"   integer                  NOT NULL,  -- "latitude", "longitude", "estado", "cidade", "bairro", "rua", "numero", "complemento", "cep" (SELECT * FROM enderecos)
    "pedido_minimo" numeric(10, 2),
    "taxa_entrega"  numeric(10, 2),
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_restaurantes
        FOREIGN KEY (id_endereco)
            REFERENCES enderecos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_restaurantes1
        FOREIGN KEY (id_telefone)
            REFERENCES telefones (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pratos"
(
    "id"             SERIAL PRIMARY KEY,
    "id_macro"       integer                  NOT NULL, -- "carboidratos", "proteinas", "gorduras", "fibras", "sodio" (SELECT * FROM macros)
    "id_restaurante" integer                  NOT NULL, -- "cnpj", "razao_social", "nome_fantasia", "id_endereco", "pedido_minimo", "taxa_entrega" (SELECT * FROM restaurantes)
    "id_adicional"   integer, -- "nome", "quantidade", "limite" (SELECT * FROM adicionais)
    "nome"           varchar(255)             NOT NULL,
    "descricao"      varchar(255)             NOT NULL,
    "url_imagem"     varchar(500)             NOT NULL,
    "preco"          numeric(10, 2)           NOT NULL,
    "disponivel"     boolean                  NOT NULL DEFAULT true,
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pratos
        FOREIGN KEY (id_macro)
            REFERENCES macros (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pratos1
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pratos2
        FOREIGN KEY (id_adicional)
            REFERENCES adicionais (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "ingredientes_pratos"
(
    "id"                SERIAL PRIMARY KEY,
    "id_ingrediente"    INTEGER                  NOT NULL, -- "ingrediente", "kosher", "halal", "alergeno" (SELECT * FROM ingredientes)
    "id_prato"          INTEGER                  NOT NULL, -- "id_macro", "id_restaurante", "id_adicional", "nome", "descricao", "url_imagem", "preco", "disponivel" (SELECT * FROM pratos)
    "quantidade"        NUMERIC(5, 2)            NOT NULL,
    "unidade_de_medida" varchar(255)             NOT NULL,
    "criado_em"         timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"       timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_ingredientes_pratos
        FOREIGN KEY (id_ingrediente)
            REFERENCES ingredientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_ingredientes_pratos1
        FOREIGN KEY (id_prato)
            REFERENCES pratos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pedidos"
(
    "id"                SERIAL PRIMARY KEY,
    "id_cliente"        integer                  NOT NULL, -- "id_endereco", "id_dados_corporais", "id_telefone", "nome", "sobrenome", "email", "senha", "ativo" (SELECT * FROM clientes)
    "id_restaurante"    integer                  NOT NULL, -- "cnpj", "razao_social", "nome_fantasia", "id_endereco", "pedido_minimo", "taxa_entrega" (SELECT * FROM restaurantes)
    "id_status_entrega" integer                  NOT NULL, -- "status" (SELECT * FROM status_pedidos)
    "criado_em"         timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"       timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pedidos
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedidos1
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedidos3
        FOREIGN KEY (id_status_entrega)
            REFERENCES status_pedidos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pagamentos"
(
    id               SERIAL PRIMARY KEY,
    data_pagamento   timestamp with time zone          DEFAULT CURRENT_TIMESTAMP,
    valor_pago       numeric(10, 2)           NOT NULL,
    metodo_pagamento integer                  NOT NULL, -- "metodo" (SELECT * FROM metodos_pagamentos)
    status_pagamento integer                  NOT NULL, -- "status" (SELECT * FROM status_pagamentos)
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pedido
        FOREIGN KEY (metodo_pagamento)
            REFERENCES metodos_pagamentos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedido1
        FOREIGN KEY (status_pagamento)
            REFERENCES status_pagamentos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pagamentos_pedidos" -- Associativa entre pagamentos e pedidos
(
    "id"            SERIAL PRIMARY KEY,
    "id_pagamento"
    "id"            SERIAL PRIMARY KEY,
    "nome"          varchar(255)             NOT NULL,
    "quantidade"    integer                  NOT NULL,
    "limite"        integer                  NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "ingredientes"
(
    "id"            SERIAL PRIMARY KEY,
    "ingrediente"   varchar(255)             NOT NULL,
    "kosher"        boolean,
    "halal"         boolean,
    "alergeno"      varchar(255),
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "pratos"
(
    "id"             SERIAL PRIMARY KEY,
    "id_macro"       integer                  NOT NULL, -- "carboidratos", "proteinas", "gorduras", "fibras", "sodio" (SELECT * FROM macros)
    "id_restaurante" integer                  NOT NULL, -- "cnpj", "razao_social", "nome_fantasia", "id_endereco", "pedido_minimo", "taxa_entrega" (SELECT * FROM restaurantes)
    "id_adicional"   integer, -- "nome", "quantidade", "limite" (SELECT * FROM adicionais)
    "nome"           varchar(255)             NOT NULL,
    "descricao"      varchar(255)             NOT NULL,
    "url_imagem"     varchar(500)             NOT NULL,
    "preco"          numeric(10, 2)           NOT NULL,
    "disponivel"     boolean                  NOT NULL DEFAULT true,
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pratos
        FOREIGN KEY (id_macro)
            REFERENCES macros (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pratos1
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pratos2
        FOREIGN KEY (id_adicional)
            REFERENCES adicionais (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "ingredientes_pratos"
(
    "id"                SERIAL PRIMARY KEY,
    "id_ingrediente"    INTEGER                  NOT NULL, -- "ingrediente" (SELECT * FROM ingredientes)
    "id_prato"          INTEGER                  NOT NULL, -- "nome", "descricao", "url_imagem", "preco", "disponivel" (SELECT * FROM pratos)
    "quantidade"        NUMERIC(5, 2)            NOT NULL,
    "unidade_de_medida" varchar(255)             NOT NULL,
    "criado_em"         timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"       timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_ingredientes_pratos
        FOREIGN KEY (id_ingrediente)
            REFERENCES ingredientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_ingredientes_pratos1
        FOREIGN KEY (id_prato)
            REFERENCES pratos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "status_pedidos"
(
    "id"            SERIAL PRIMARY KEY,
    "status"        varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "pedidos"
(
    "id"                SERIAL PRIMARY KEY,
    "id_cliente"        integer                  NOT NULL, -- "nome", "sobrenome", "email", "senha", "ativo" (SELECT * FROM clientes)
    "id_restaurante"    integer                  NOT NULL, -- "cnpj", "razao_social", "nome_fantasia", "id_endereco", "pedido_minimo", "taxa_entrega" (SELECT * FROM restaurantes)
    "id_status_entrega" integer                  NOT NULL, -- "status" (SELECT * FROM status_pedidos)
    "criado_em"         timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"       timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pedidos
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedidos1
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedidos3
        FOREIGN KEY (id_status_entrega)
            REFERENCES status_pedidos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "metodos_pagamentos" -- Tabela para normalização de dados; Ex: 'cartão', 'PIX', ''
(
    "id"            SERIAL PRIMARY KEY,
    "metodo"        varchar(64)              NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "status_pagamentos" -- Ex: 'pendente', 'aprovado'
(
    "id"            SERIAL PRIMARY KEY,
    "status"        varchar(64)              NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "pagamentos"
(
    id               SERIAL PRIMARY KEY,
    data_pagamento   timestamp with time zone          DEFAULT CURRENT_TIMESTAMP,
    valor_pago       numeric(10, 2)           NOT NULL,
    metodo_pagamento integer                  NOT NULL, -- "metodo" (SELECT * FROM metodos_pagamentos)
    status_pagamento integer                  NOT NULL, -- "status" (SELECT * FROM status_pagamentos)
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pedido
        FOREIGN KEY (metodo_pagamento)
            REFERENCES metodos_pagamentos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedido1
        FOREIGN KEY (status_pagamento)
            REFERENCES status_pagamentos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pagamentos_pedidos" -- Associativa entre pagamentos e pedidos
(
    "id"            SERIAL PRIMARY KEY,
    "id_pagamento"  integer                  NOT NULL,
    "id_pedido"     integer                  NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pagamento_pedido
        FOREIGN KEY (id_pagamento)
            REFERENCES pagamentos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedido1
        FOREIGN KEY (id_pedido)
            REFERENCES pedidos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "estornos"
(
    "id"            SERIAL PRIMARY KEY,
    "id_pagamento"  integer                  NOT NULL,
    "valor"         numeric(10, 2)           NOT NULL,
    "motivo"        varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_estornos
        FOREIGN KEY (id_pagamento)
            REFERENCES pagamentos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "avaliacoes_restaurantes"
(
    "id"             SERIAL PRIMARY KEY,
    "id_cliente"     integer                                 NOT NULL,
    "id_restaurante" integer                                 NOT NULL,
    "nota"           INTEGER CHECK (nota >= 1 AND nota <= 5) NOT NULL,
    "comentario"     varchar(255)                            NOT NULL,
    "criado_em"      timestamp with time zone                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone                         DEFAULT NULL,
    CONSTRAINT fk_avaliacoes_restaurantes
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_avaliacoes_restaurantes1
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "avaliacoes_pratos"
(
    "id"            SERIAL PRIMARY KEY,
    "id_cliente"    integer                                 NOT NULL,
    "id_prato"      integer                                 NOT NULL,
    "nota"          INTEGER CHECK (nota >= 1 AND nota <= 5) NOT NULL,
    "comentario"    varchar(255)                            NOT NULL,
    "criado_em"     timestamp with time zone                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone                NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone                         DEFAULT NULL,
    CONSTRAINT fk_avaliacoes_pratos
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_avaliacoes_pratos1
        FOREIGN KEY (id_prato)
            REFERENCES pratos (id)
            ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS "restricoes_alimentares"
(
    "id"             SERIAL PRIMARY KEY,
    "id_cliente"     integer                  NOT NULL,
    "id_ingrediente" integer                  NOT NULL,
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_restricoes_alimentares
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_restricoes_alimentares1
        FOREIGN KEY (id_ingrediente)
            REFERENCES ingredientes (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "cupons"
(
    "id"             SERIAL PRIMARY KEY,
    "codigo"         varchar(20)              NOT NULL UNIQUE,
    "descricao"      varchar(255)             NOT NULL,
    "desconto"       numeric(10, 2)           NOT NULL,
    "data_inicio"    timestamp with time zone NOT NULL,
    "data_fim"       timestamp with time zone NOT NULL,
    "ativo"          boolean                  NOT NULL DEFAULT true,
    "criado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"  timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"    timestamp with time zone          DEFAULT NULL,
    "id_restaurante" integer                  NOT NULL,
    CONSTRAINT fk_cupons
        FOREIGN KEY (id_restaurante)
            REFERENCES restaurantes (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "preferencias"
(
    "id"            SERIAL PRIMARY KEY,
    "id_cliente"    integer                  NOT NULL,
    "id_prato"      integer,
    "filtro_usado"  varchar(255)             NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_preferencias FOREIGN KEY (id_cliente)
        REFERENCES clientes (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_preferencias1
        FOREIGN KEY (id_prato)
            REFERENCES pratos (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "necessidades_nutricionais"
(
    "id"                 SERIAL PRIMARY KEY,
    "tipo_refeicao"      varchar(255)             NOT NULL, -- Almoço, janta, café da tarde, ceia...
    "calorias"           numeric(10, 2)           NOT NULL,
    "proteinas"          numeric(10, 2)           NOT NULL,
    "carboidratos"       numeric(10, 2)           NOT NULL,
    "fibras"             numeric(10, 2)           NOT NULL,
    "gorduras_trans"     numeric(10, 2)           NOT NULL,
    "sodio"              numeric(10, 2)           NOT NULL,
    "gorduras_saturadas" numeric(10, 2)           NOT NULL,
    "criado_em"          timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"      timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"        timestamp with time zone          DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS "necessidades_clientes"
(
    "id"                           SERIAL PRIMARY KEY,
    "id_necessidades_nutricionais" integer                  NOT NULL,
    "id_cliente"                   integer                  NOT NULL,
    "criado_em"                    timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em"                timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"                  timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_necessidades_clientes FOREIGN KEY (id_necessidades_nutricionais)
        REFERENCES necessidades_nutricionais (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_necessidades_clientes1
        FOREIGN KEY (id_cliente)
            REFERENCES clientes (id)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "pedidos_pratos"
(
    "id"            SERIAL PRIMARY KEY,
    "id_pedido"     integer                  NOT NULL,
    "id_prato"      integer                  NOT NULL,
    "quantidade"    integer                  NOT NULL,
    "criado_em"     timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "atualizado_em" timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletado_em"   timestamp with time zone          DEFAULT NULL,
    CONSTRAINT fk_pedidos_pratos
        FOREIGN KEY (id_pedido)
            REFERENCES pedidos (id)
            ON DELETE CASCADE,
    CONSTRAINT fk_pedidos_pratos1
        FOREIGN KEY (id_prato)
            REFERENCES pratos (id)
            ON DELETE CASCADE
);
