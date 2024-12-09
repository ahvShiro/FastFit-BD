# Documentação do Repositório FastFit-BD

## Descrição
A FastFit é uma startup criada durante o evento Garage Geração Tec 2024, promovido pelo Sebrae/PR, UniFatecie e IFPR. O objetivo da FastFit é ajudar seus usuários a manter uma alimentação saudável por meio de deliveries de alimentos saudáveis. Além disso, a plataforma rastreia as calorias e macronutrientes consumidos pelos usuários e recomenda pratos que se encaixam com seus planos de dieta.

## Modelo de Negócio
O negócio funciona como um B2B2C, atuando como um intermediário entre restaurantes e clientes. Os clientes adicionam seus dados corporais, como estatura, peso e percentual de gordura, além de realizarem pedidos. Os restaurantes adicionam seus pratos, recebem os pedidos dos clientes e realizam entregas por meio dos entregadores.

## Escolha do SGBD
Escolhemos o PostgreSQL como o Sistema de Gerenciamento de Banco de Dados (SGBD) devido à sua robustez, flexibilidade para uso de arquivos JSON, possibilidade de integração com o plugin de inserção de dados geoespaciais PostGIS, além de sua escalabilidade e segurança.

## Estrutura do Repositório
- **CREATE.SQL**: Contém os scripts de criação das tabelas do banco de dados.
- **INSERT.SQL**: Contém os scripts de inserção de dados nas tabelas do banco de dados.
- **RELATORIOS.SQL**: Contém os scripts de geração de relatórios a partir dos dados do banco de dados.

## Diagrama Entidade-Relacionamento
Para a criação do DER para o banco de dados da FastFit, foi optado por utilizar a ferramenta ERD Lab para a criação do esboço do banco e em seguida, o banco de dados foi exportado para o PostgreSQL, conectado com o DataGrip da JetBrains, para a geração do diagrama final.

![Diagrama Entidade-Relacionamento](assets/public.png)

## Tabelas Principais
- **tipos_telefone**: Armazena os tipos de telefone (e.g., Residencial, Comercial).
- **telefones**: Armazena os números de telefone e seus respectivos tipos.
- **enderecos**: Armazena os endereços dos clientes e restaurantes.
- **objetivos**: Armazena os objetivos de dieta dos clientes (e.g., Perda de Peso, Ganho de Massa Muscular).
- **niveis_atividade**: Armazena os níveis de atividade física dos clientes.
- **dados_corporais**: Armazena os dados corporais dos clientes.
- **clientes**: Armazena os dados dos clientes.
- **veiculos**: Armazena os dados dos veículos dos entregadores.
- **cnhs**: Armazena os dados das CNHs dos entregadores.
- **entregadores**: Armazena os dados dos entregadores.
- **restaurantes**: Armazena os dados dos restaurantes.
- **macros**: Armazena os dados de macronutrientes dos pratos.
- **ingredientes**: Armazena os dados dos ingredientes dos pratos.
- **pratos**: Armazena os dados dos pratos oferecidos pelos restaurantes.
- **ingredientes_pratos**: Armazena a relação entre ingredientes e pratos.
- **status_pedidos**: Armazena os status dos pedidos.
- **pedidos**: Armazena os dados dos pedidos realizados pelos clientes.
- **metodos_pagamentos**: Armazena os métodos de pagamento disponíveis.
- **status_pagamentos**: Armazena os status dos pagamentos.
- **pagamentos**: Armazena os dados dos pagamentos realizados.
- **pagamentos_pedidos**: Armazena a relação entre pagamentos e pedidos.
- **estornos**: Armazena os dados dos estornos realizados.
- **avaliacoes_restaurantes**: Armazena as avaliações dos restaurantes feitas pelos clientes.
- **avaliacoes_pratos**: Armazena as avaliações dos pratos feitas pelos clientes.
- **avaliacoes_entregadores**: Armazena as avaliações dos entregadores feitas pelos clientes.
- **restricoes_alimentares**: Armazena as restrições alimentares dos clientes.
- **cupons**: Armazena os dados dos cupons de desconto.
- **preferencias**: Armazena as preferências alimentares dos clientes.
- **necessidades_nutricionais**: Armazena as necessidades nutricionais dos clientes.
- **necessidades_clientes**: Armazena a relação entre necessidades nutricionais e clientes.
- **pedidos_pratos**: Armazena a relação entre pedidos e pratos.

## Relatórios
Os relatórios gerados a partir dos dados do banco de dados incluem:
- Cadastro de Tipos de Telefone
- Registro de Telefones com Tipos de Telefone
- Cadastro de Endereços
- Cadastro de Objetivos
- Cadastro de Níveis de Atividade
- Cadastro de Dados Corporais com Objetivos e Níveis de Atividade
- Cadastro de Clientes com Endereços, Dados Corporais e Telefones
- Cadastro de Veículos
- Cadastro de CNHs
- Cadastro de Entregadores com Telefones, Veículos e CNHs
- Cadastro de Restaurantes com Endereços
- Cadastro de Macros
- Cadastro de Ingredientes
- Cadastro de Pratos com Macros e Restaurantes
- Cadastro de Ingredientes Pratos com Ingredientes e Pratos
- Cadastro de Status de Pedidos
- Cadastro de Métodos de Pagamento
- Cadastro de Status de Pagamentos
- Cadastro de Cupons com Restaurantes
- Cadastro de Preferências com Clientes e Pratos
- Cadastro de Necessidades Nutricionais
- Cadastro de Necessidades dos Clientes com Necessidades Nutricionais e Clientes
- Restrições Alimentares com Clientes e Ingredientes
- Relatório Completo de Pagamentos Realizados
- Relatório Completo dos Pedidos Realizados
- Relatório Completo de Todas as Movimentações (Pedidos com Clientes, Restaurantes, Entregadores, Status de Entrega, Pratos e Pagamentos)
- Avaliações de Restaurantes com Clientes e Restaurantes
- Avaliações de Pratos com Clientes e Pratos
- Avaliações de Entregadores com Clientes e Entregadores
