INSERT INTO produto(nome, descricao, disponivel, valor, fk_categoria_produto_id, fk_fornecedor_id)
VALUES
("Tinta Acrílica Branca", "Tinta acrílica para parede, acabamento fosco", 100, 45.99, 1, 1),
("Tinta Látex Azul", "Tinta látex para acabamento acetinado em paredes", 150, 38.50, 1, 3),
("Tinta Esmalte Sintético", "Tinta esmalte sintético para madeira e metal", 80, 29.99, 1, 1),
("Tinta Spray Vermelha", "Tinta spray para uso em diversas superfícies", 200, 19.90, 1, 1),
("Tinta PVA Branco", "Tinta PVA branca para uso interno", 120, 22.75, 1, 1),
("Tinta Epóxi Verde", "Tinta epóxi para pisos e superfícies industriais", 60, 99.50, 1, 3),
("Tinta Automotiva Preta", "Tinta automotiva para pintura de veículos", 50, 120.00, 1, 1),
("Tinta à Base de Água", "Tinta ecológica à base de água para interiores", 140, 55.00, 1, 1),
("Tinta Acrílica Lavável", "Tinta acrílica lavável para ambientes com alta umidade", 110, 69.80, 1, 6),
("Tinta Térmica", "Tinta térmica para superfícies expostas ao calor", 90, 79.99, 1, 1);

INSERT INTO produto(nome, descricao, disponivel, valor, fk_categoria_produto_id, fk_fornecedor_id)
VALUES
("Martelo de Unha", "Martelo de unha com cabo de madeira", 150, 19.90, 2, 1),
("Chave de Fenda 6mm", "Chave de fenda com cabo ergonômico", 200, 15.00, 2, 1),
("Alicate Universal", "Alicate universal para diversos tipos de trabalhos", 100, 22.50, 2, 1),
("Serra Tico-Tico Elétrica", "Serra tico-tico com controle de velocidade", 80, 180.00, 2, 7),
("Chave Inglesa 12 polegadas", "Chave inglesa ajustável", 120, 35.00, 2, 3),
("Lima de Ferro", "Lima de ferro para acabamento de metal", 70, 12.00, 2, 4),
("Furadeira Elétrica 500W", "Furadeira elétrica de 500 watts", 50, 220.00, 2, 5),
("Plaina Manual", "Plaina manual para acabamento de madeira", 90, 80.00, 2, 1),
("Régua de Alumínio", "Régua de alumínio de 1 metro", 130, 25.00, 2, 1),
("Trena 5m", "Trena de 5 metros com travamento automático", 200, 35.99, 2, 2);

INSERT INTO produto(nome, descricao, disponivel, valor, fk_categoria_produto_id, fk_fornecedor_id)
VALUES
("Cimento Portland", "Cimento Portland para construção civil", 500, 28.50, 3, 1),
("Areia Fina", "Areia fina para construção e acabamento", 300, 45.00, 3, 1),
("Cal Hidratada", "Cal hidratada para revestimento e argamassa", 150, 12.90, 3, 8),
("Tijolo Comum", "Tijolo comum para alvenaria", 1000, 0.90, 3, 1),
("Bloco de Concreto", "Bloco de concreto para construção", 600, 3.50, 3, 1),
("Telha Cerâmica", "Telha cerâmica para cobertura de telhados", 200, 8.90, 3, 10),
("Ferro de Construção", "Ferro de construção de 8mm", 400, 5.99, 3, 1),
("Argamassa", "Argamassa pronta para assentamento de pisos", 350, 12.00, 3, 6),
("Madeira de Pinus", "Madeira de pinus para estruturação e marcenaria", 120, 22.00, 3, 1),
("Pedra Brita", "Pedra brita para concretagem", 250, 40.00, 3, 1);

-- Inserção de 10 produtos na categoria "Elétrica" (categoria_produto_id = 4)
INSERT INTO produto(nome, descricao, disponivel, valor, fk_categoria_produto_id, fk_fornecedor_id)
VALUES
("Fios e Cabos Elétricos", "Fios e cabos elétricos para instalações", 500, 1.50, 4, 1),
("Interruptor Simples", "Interruptor simples para instalações elétricas", 250, 8.90, 4, 1),
("Tomada 10A", "Tomada 10A para uso residencial", 300, 6.50, 4, 1),
("Disjuntor 10A", "Disjuntor de 10A para proteção de circuitos", 180, 45.00, 4, 1),
("Fita Isolante", "Fita isolante preta para eletricistas", 600, 2.00, 4, 1),
("Lâmpada LED 9W", "Lâmpada LED de 9W com alta durabilidade", 400, 15.99, 4, 2),
("Extensão Elétrica 3m", "Extensão elétrica de 3 metros", 200, 25.00, 4, 8),
("Soquete 110V", "Soquete para lâmpadas de 110V", 300, 4.50, 4, 1),
("Placa de Circuito", "Placa de circuito impresso para montagem de dispositivos", 100, 35.00, 4, 1),
("Bateria 12V", "Bateria 12V para sistemas de energia solar", 50, 120.00, 4, 9);

INSERT INTO produto(nome, descricao, disponivel, valor, fk_categoria_produto_id, fk_fornecedor_id)
VALUES
("Torneira de Água", "Torneira para uso em cozinha e banheiros", 250, 18.50, 5, 3),
("Mangueira de Jardim", "Mangueira flexível de 10 metros", 500, 30.00, 5, 1),
("Registro de Água", "Registro para controle de passagem de água", 180, 25.00, 5, 7),
("Conector de PVC", "Conector de PVC para tubulações", 300, 4.50, 5, 1),
("Ralo de Piso", "Ralo de piso em inox", 120, 15.00, 5, 1),
("Cabo de Aço para Pulga", "Cabo de aço para uso em sistemas hidráulicos", 70, 65.00, 5, 1),
("Caixa d'Água 500L", "Caixa d'água de 500 litros para armazenamento", 50, 350.00, 5, 9),
("Válvula de Descarga", "Válvula para sistemas de descarga de banheiro", 200, 22.00, 5, 10),
("Bico de Conexão", "Bico de conexão para mangueira", 400, 6.00, 5, 1),
("Alicate de Pressão", "Alicate de pressão para apertar conexões hidráulicas", 90, 35.00, 5, 4);
