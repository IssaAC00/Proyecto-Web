ALTER TABLE product AUTO_INCREMENT = 1;
Alter TABLE product_category AUTO_INCREMENT = 1;

-- Producto 1: ASUS ROG Strix B550-F Gaming
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('ASUS ROG Strix B550-F Gaming', 'Tarjeta madre ATX con socket AM4 y soporte para Ryzen de 3ra generación.', 185000.00, 'ASUS', 'https://extremetechcr.com/tienda/34609-large_default/asus-prime-a520m-a-ii.jpg', 'Chipset B550, 4x DDR4, HDMI, DisplayPort, PCIe 4.0, USB 3.2', NULL, 20, 0);

-- Producto 2: Gigabyte Z490 AORUS Ultra
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Gigabyte Z490 AORUS Ultra', 'Tarjeta madre ATX para procesadores Intel de 10ma generación.', 250000.00, 'Gigabyte', 'https://extremetechcr.com/tienda/36798-large_default/gigabyte-h510m-k-v2.jpg', 'Chipset Z490, 4x DDR4, Intel WiFi 6, RGB Fusion 2.0, PCIe 3.0', NULL, 15, 0);

-- Producto 3: MSI MPG X570 Gaming Plus
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('MSI MPG X570 Gaming Plus', 'Tarjeta madre ATX con socket AM4 y diseño eficiente de energía.', 200000.00, 'MSI', 'https://extremetechcr.com/tienda/32621-home_default/gigabyte-b450m-k.jpg', 'Chipset X570, 4x DDR4, PCIe 4.0, M.2 Shield Frozr, Audio Boost 4', NULL, 25, 0);

-- Producto 4: ASRock B460 Steel Legend
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('ASRock B460 Steel Legend', 'Tarjeta madre ATX para Intel de 10ma generación con iluminación RGB.', 150000.00, 'ASRock', 'https://extremetechcr.com/tienda/26518-home_default/asrock-h610m-hvsm2-r20.jpg', 'Chipset B460, 4x DDR4, Polychrome RGB, M.2 NVMe, USB 3.2', NULL, 30, 0);

-- Producto 5: ASUS Prime Z590-P
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('ASUS Prime Z590-P', 'Tarjeta madre ATX para procesadores Intel de 11va generación.', 220000.00, 'ASUS', 'https://extremetechcr.com/tienda/30689-home_default/gigabyte-a520m-k-v2.jpg', 'Chipset Z590, 4x DDR4, PCIe 4.0, 2x M.2, USB 3.2 Gen 2', NULL, 18, 0);




-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'ASUS ROG Strix B550-F Gaming');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Gigabyte Z490 AORUS Ultra');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'MSI MPG X570 Gaming Plus');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'ASRock B460 Steel Legend');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'ASUS Prime Z590-P');

-- Asociar los productos a la categoría Tarjetas Madre (id = 10)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 10);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 10);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 10);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 10);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 10);


-- Producto 1: NVIDIA GeForce RTX 3090
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('NVIDIA GeForce RTX 3090', 'Tarjeta gráfica de alto rendimiento para gaming y creación de contenido en 8K.', 1500000.00, 'NVIDIA', 'https://extremetechcr.com/tienda/33881-thickbox_default/msi-nvidia-geforce-rtx-4070ti-super-16-gb-ventus-3x-oc.jpg', '24GB GDDR6X, HDMI, DisplayPort, PCI Express 4.0', NULL, 10, 0);

-- Producto 2: AMD Radeon RX 6900 XT
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('AMD Radeon RX 6900 XT', 'Tarjeta gráfica potente para juegos en 4K con alta tasa de refresco.', 1300000.00, 'AMD', 'https://extremetechcr.com/tienda/39942-thickbox_default/gigabyte-geforce-rtx-4080-super-gaming-16-gb.jpg', '16GB GDDR6, HDMI, DisplayPort, PCI Express 4.0', NULL, 12, 0);

-- Producto 3: NVIDIA GeForce RTX 3070
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('NVIDIA GeForce RTX 3070', 'Excelente rendimiento para gaming en 1440p y capacidades de trazado de rayos.', 700000.00, 'NVIDIA', 'https://extremetechcr.com/tienda/33992-thickbox_default/gigabyte-geforce-rtx-4070ti-super-windforce-oc-16-gb.jpg', '8GB GDDR6, HDMI, DisplayPort, PCI Express 4.0', NULL, 25, 0);

-- Producto 4: AMD Radeon RX 6800
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('AMD Radeon RX 6800', 'Tarjeta gráfica optimizada para juegos en 1440p y 4K.', 850000.00, 'AMD', 'https://extremetechcr.com/tienda/33633-thickbox_default/zotac-nvidia-geforce-rtx-4070-super-twin-edge-12-gb.jpg', '16GB GDDR6, HDMI, DisplayPort, PCI Express 4.0', NULL, 20, 0);

-- Producto 5: NVIDIA GeForce GTX 1660 Ti
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('NVIDIA GeForce GTX 1660 Ti', 'Tarjeta gráfica de gama media para gaming en 1080p con alto rendimiento.', 350000.00, 'NVIDIA', 'https://extremetechcr.com/tienda/33635-large_default/gigabyte-geforce-rtx-4070-super-gaming-oc-12-gb.jpg', '6GB GDDR6, HDMI, DisplayPort, PCI Express 3.0', NULL, 30, 0);

-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'NVIDIA GeForce RTX 3090');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'AMD Radeon RX 6900 XT');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'NVIDIA GeForce RTX 3070');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'AMD Radeon RX 6800');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'NVIDIA GeForce GTX 1660 Ti');




-- Asociar los productos a la categoría Tarjetas de Video (id = 9)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 9);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 9);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 9);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 9);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 9);

-- Producto 1: Intel Core i9-11900K
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Intel Core i9-11900K', 'Procesador de alto rendimiento de 11ª generación para entusiastas y jugadores.', 550000.00, 'Intel', 'https://extremetechcr.com/tienda/30777-large_default/intel-core-i9-14900kf.jpg', '8 núcleos, 16 hilos, frecuencia base de 3.5 GHz, Turbo de hasta 5.3 GHz', NULL, 15, 0);

-- Producto 2: AMD Ryzen 9 5950X
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('AMD Ryzen 9 5950X', 'Procesador de alto rendimiento para creadores y gamers exigentes.', 700000.00, 'AMD', 'https://extremetechcr.com/tienda/38034-large_default/amd-ryzen-9-9950x.jpg', '16 núcleos, 32 hilos, frecuencia base de 3.4 GHz, Boost de hasta 4.9 GHz', NULL, 10, 0);

-- Producto 3: Intel Core i7-11700K
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Intel Core i7-11700K', 'Procesador de 11ª generación optimizado para gaming y multitarea.', 400000.00, 'Intel', 'https://extremetechcr.com/tienda/30775-large_default/intel-core-i7-14700k.jpg', '8 núcleos, 16 hilos, frecuencia base de 3.6 GHz, Turbo de hasta 5.0 GHz', NULL, 20, 0);

-- Producto 4: AMD Ryzen 7 5800X
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('AMD Ryzen 7 5800X', 'Procesador de alto rendimiento para juegos y aplicaciones creativas.', 450000.00, 'AMD', 'https://extremetechcr.com/tienda/40118-large_default/amd-ryzen-7-9800x3d.jpg', '8 núcleos, 16 hilos, frecuencia base de 3.8 GHz, Boost de hasta 4.7 GHz', NULL, 25, 0);

-- Producto 5: Intel Core i5-11600K
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Intel Core i5-11600K', 'Procesador de 11ª generación con excelente relación calidad-precio.', 300000.00, 'Intel', 'https://extremetechcr.com/tienda/11650-large_default/intel-core-i5-10400f.jpg', '6 núcleos, 12 hilos, frecuencia base de 3.9 GHz, Turbo de hasta 4.9 GHz', NULL, 30, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Intel Core i9-11900K');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'AMD Ryzen 9 5950X');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Intel Core i7-11700K');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'AMD Ryzen 7 5800X');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Intel Core i5-11600K');

-- Asociar los productos a la categoría Procesadores (id = 11)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 11);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 11);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 11);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 11);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 11);


-- Producto 1: Corsair Vengeance LPX 16GB (2x8GB) DDR4 3200MHz
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Corsair Vengeance LPX 16GB (2x8GB) DDR4 3200MHz', 'Kit de memoria RAM DDR4 de alto rendimiento para sistemas de escritorio.', 100000.00, 'Corsair', 'https://extremetechcr.com/tienda/10865-home_default/teamgroup-t-force-delta-rgb-8-gb-ddr4-2666.jpg', 'Capacidad: 16GB (2x8GB), Velocidad: 3200MHz, Latencia CAS 16', NULL, 50, 0);

-- Producto 2: G.Skill Trident Z RGB 32GB (2x16GB) DDR4 3600MHz
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('G.Skill Trident Z RGB 32GB (2x16GB) DDR4 3600MHz', 'Memoria RAM con iluminación RGB y alto rendimiento para entusiastas.', 250000.00, 'G.Skill', 'https://extremetechcr.com/tienda/26424-home_default/gskill-trident-z-rgb-8-gb-ddr4-3200.jpg', 'Capacidad: 32GB (2x16GB), Velocidad: 3600MHz, Latencia CAS 18', NULL, 30, 0);

-- Producto 3: Kingston HyperX Fury 8GB DDR4 2400MHz
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Kingston HyperX Fury 8GB DDR4 2400MHz', 'Módulo de memoria RAM confiable y de alto rendimiento.', 50000.00, 'Kingston', 'https://extremetechcr.com/tienda/10677-large_default/teamgroup-t-force-vulcan-z-roja-8-gb-ddr4-3200.jpg', 'Capacidad: 8GB, Velocidad: 2400MHz, Latencia CAS 15', NULL, 70, 0);

-- Producto 4: Crucial Ballistix 16GB (2x8GB) DDR4 2666MHz
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Crucial Ballistix 16GB (2x8GB) DDR4 2666MHz', 'Memoria RAM de alto rendimiento para gaming y aplicaciones intensivas.', 90000.00, 'Crucial', 'https://extremetechcr.com/tienda/19206-home_default/adata-xpg-lancer-16-gb-ddr5-5200-rgb.jpg', 'Capacidad: 16GB (2x8GB), Velocidad: 2666MHz, Latencia CAS 16', NULL, 60, 0);

-- Producto 5: TeamGroup T-Force Delta RGB 16GB (2x8GB) DDR4 3200MHz
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('TeamGroup T-Force Delta RGB 16GB (2x8GB) DDR4 3200MHz', 'Memoria RAM con iluminación RGB y diseño único.', 110000.00, 'TeamGroup', 'https://extremetechcr.com/tienda/36417-home_default/gskill-ripjaws-s5-16-gb-ddr5-5200-cl40-blanco.jpg', 'Capacidad: 16GB (2x8GB), Velocidad: 3200MHz, Latencia CAS 16', NULL, 40, 0);

-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Corsair Vengeance LPX 16GB (2x8GB) DDR4 3200MHz');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'G.Skill Trident Z RGB 32GB (2x16GB) DDR4 3600MHz');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Kingston HyperX Fury 8GB DDR4 2400MHz');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Crucial Ballistix 16GB (2x8GB) DDR4 2666MHz');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'TeamGroup T-Force Delta RGB 16GB (2x8GB) DDR4 3200MHz');

-- Asociar los productos a la categoría Memorias RAM (id = 12)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 12);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 12);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 12);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 12);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 12);


-- Producto 1: Samsung 970 EVO Plus NVMe M.2 SSD 1TB
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Samsung 970 EVO Plus NVMe M.2 SSD 1TB', 'Unidad SSD NVMe de alto rendimiento para laptops y PCs.', 250000.00, 'Samsung', 'https://extremetechcr.com/tienda/28799-home_default/teamgroup-mp44l-m2-500-gb.jpg', 'Capacidad: 1TB, Interfaz: NVMe M.2 PCIe 3.0 x4, Velocidad de lectura: hasta 3500 MB/s, Velocidad de escritura: hasta 3300 MB/s', NULL, 20, 0);

-- Producto 2: Seagate BarraCuda 2TB HDD 3.5"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Seagate BarraCuda 2TB HDD 3.5"', 'Disco duro interno de alta capacidad para almacenamiento masivo.', 100000.00, 'Seagate', 'https://extremetechcr.com/tienda/33962-home_default/patriot-p400-lite-500gb.jpg', 'Capacidad: 2TB, Interfaz: SATA III, Velocidad: 7200 RPM, Caché: 256MB', NULL, 30, 0);

-- Producto 3: Western Digital Blue 500GB SATA SSD
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Western Digital Blue 500GB SATA SSD', 'SSD SATA de alto rendimiento para mejorar la velocidad del sistema.', 85000.00, 'Western Digital', 'https://extremetechcr.com/tienda/27003-home_default/adata-legend-800-2-tb.jpg', 'Capacidad: 500GB, Interfaz: SATA III, Velocidad de lectura: hasta 560 MB/s, Velocidad de escritura: hasta 530 MB/s', NULL, 25, 0);

-- Producto 4: Kingston A2000 NVMe M.2 SSD 500GB
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Kingston A2000 NVMe M.2 SSD 500GB', 'SSD NVMe económico con rendimiento impresionante para laptops y PCs.', 90000.00, 'Kingston', 'https://extremetechcr.com/tienda/39135-home_default/kingston-nv3-1tb-nvme-pcie-40.jpg', 'Capacidad: 500GB, Interfaz: NVMe M.2 PCIe 3.0 x4, Velocidad de lectura: hasta 2200 MB/s, Velocidad de escritura: hasta 2000 MB/s', NULL, 40, 0);

-- Producto 5: SanDisk Ultra Flair 128GB USB 3.0
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('SanDisk Ultra Flair 128GB USB 3.0', 'Memoria USB de alta velocidad para almacenamiento portátil.', 25000.00, 'SanDisk', 'https://extremetechcr.com/tienda/26423-home_default/adata-32-gb-ddr5-4800-so-dimm.jpg', 'Capacidad: 128GB, Interfaz: USB 3.0, Velocidad de lectura: hasta 150 MB/s', NULL, 50, 0);

-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Samsung 970 EVO Plus NVMe M.2 SSD 1TB');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Seagate BarraCuda 2TB HDD 3.5"');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Western Digital Blue 500GB SATA SSD');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Kingston A2000 NVMe M.2 SSD 500GB');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'SanDisk Ultra Flair 128GB USB 3.0');

-- Asociar los productos a la categoría Almacenamiento (id = 13)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 13);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 13);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 13);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 13);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 13);


-- Producto 1: Corsair RM750x 750W 80+ Gold
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Corsair RM750x 750W 80+ Gold', 'Fuente de poder modular de alta eficiencia y rendimiento silencioso.', 150000.00, 'Corsair', 'https://extremetechcr.com/tienda/17974-home_default/aerocool-dorado-850w-argb-80-plus-gold.jpg', 'Potencia: 750W, Certificación: 80+ Gold, Modular: Sí, Ventilador de 135mm', NULL, 20, 0);

-- Producto 2: EVGA SuperNOVA 650 G5 650W 80+ Gold
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('EVGA SuperNOVA 650 G5 650W 80+ Gold', 'Fuente de poder totalmente modular con garantía de 10 años.', 130000.00, 'EVGA', 'https://extremetechcr.com/tienda/30991-home_default/msi-mag-a850gl-pcie5-850w-80-plus-gold-.jpg', 'Potencia: 650W, Certificación: 80+ Gold, Modular: Sí, Ventilador de 135mm', NULL, 25, 0);

-- Producto 3: Seasonic Focus GX-550 550W 80+ Gold
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Seasonic Focus GX-550 550W 80+ Gold', 'Fuente de poder compacta y eficiente con cables modulares.', 110000.00, 'Seasonic', 'https://extremetechcr.com/tienda/36593-home_default/asus-tuf-gaming-850w-80-plus-gold.jpg', 'Potencia: 550W, Certificación: 80+ Gold, Modular: Sí, Ventilador de 120mm', NULL, 30, 0);

-- Producto 4: Cooler Master MWE 650 Bronze V2 650W 80+ Bronze
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Cooler Master MWE 650 Bronze V2 650W 80+ Bronze', 'Fuente de poder con cables planos y rendimiento fiable.', 90000.00, 'Cooler Master', 'https://extremetechcr.com/tienda/33732-home_default/seasonic-focus-gx-1000-80-plus-gold-blanca-atx-3-pcie-5.jpg', 'Potencia: 650W, Certificación: 80+ Bronze, Modular: No, Ventilador de 120mm', NULL, 40, 0);

-- Producto 5: Thermaltake Smart 500W 80+ White
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Thermaltake Smart 500W 80+ White', 'Fuente de poder asequible y eficiente para sistemas básicos.', 65000.00, 'Thermaltake', 'https://extremetechcr.com/tienda/33729-large_default/seasonic-focus-gx-1000-80-plus-gold-atx-3-pcie-5.jpg', 'Potencia: 500W, Certificación: 80+ White, Modular: No, Ventilador de 120mm', NULL, 50, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Corsair RM750x 750W 80+ Gold');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'EVGA SuperNOVA 650 G5 650W 80+ Gold');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Seasonic Focus GX-550 550W 80+ Gold');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Cooler Master MWE 650 Bronze V2 650W 80+ Bronze');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Thermaltake Smart 500W 80+ White');

-- Asociar los productos a la categoría Fuentes de Poder (id = 14)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 14);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 14);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 14);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 14);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 14);



-- Producto 1: NZXT H510 Mid-Tower Case
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('NZXT H510 Mid-Tower Case', 'Gabinete mid-tower elegante y compacto con gestión de cables.', 80000.00, 'NZXT', 'https://extremetechcr.com/tienda/27521-home_default/nzxt-h9-flow-blanco.jpg', 'Compatibilidad: ATX, Micro-ATX, Mini-ITX; Puertos: USB 3.1 Gen 1, USB-C', NULL, 30, 0);

-- Producto 2: Corsair iCUE 4000X RGB Mid-Tower Case
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Corsair iCUE 4000X RGB Mid-Tower Case', 'Gabinete con panel frontal de vidrio templado e iluminación RGB.', 150000.00, 'Corsair', 'https://extremetechcr.com/tienda/39859-home_default/lian-li-011-evo-rgb-blanco.jpg', 'Compatibilidad: ATX, Micro-ATX, Mini-ITX; Incluye 3 ventiladores RGB', NULL, 20, 0);

-- Producto 3: Cooler Master MasterBox TD500 Mesh
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Cooler Master MasterBox TD500 Mesh', 'Gabinete con panel frontal de malla y excelente flujo de aire.', 120000.00, 'Cooler Master', 'https://extremetechcr.com/tienda/27523-home_default/nzxt-h9-elite-negro.jpg', 'Compatibilidad: ATX, Micro-ATX, Mini-ITX; Incluye 3 ventiladores ARGB', NULL, 25, 0);

-- Producto 4: Phanteks Eclipse P400A Digital
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Phanteks Eclipse P400A Digital', 'Gabinete con malla ultra fina para un flujo de aire óptimo.', 130000.00, 'Phanteks', 'https://extremetechcr.com/tienda/27530-home_default/lian-li-lancool-216rx-blanco.jpg', 'Compatibilidad: ATX, Micro-ATX, Mini-ITX; Incluye 3 ventiladores RGB', NULL, 15, 0);

-- Producto 5: Thermaltake Core P3 ATX Open Frame
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Thermaltake Core P3 ATX Open Frame', 'Gabinete de marco abierto ideal para exhibición y modding.', 160000.00, 'Thermaltake', 'https://extremetechcr.com/tienda/35031-home_default/lian-li-011-dynamic-evo-xl-blanco.jpg', 'Compatibilidad: ATX, Micro-ATX, Mini-ITX; Diseño modular', NULL, 10, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'NZXT H510 Mid-Tower Case');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Corsair iCUE 4000X RGB Mid-Tower Case');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Cooler Master MasterBox TD500 Mesh');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Phanteks Eclipse P400A Digital');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Thermaltake Core P3 ATX Open Frame');

-- Asociar los productos a la categoría Gabinetes (id = 15)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 15);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 15);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 15);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 15);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 15);

-- Producto 1: Cooler Master Hyper 212 EVO
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Cooler Master Hyper 212 EVO', 'Disipador de aire para CPU con excelente relación calidad-precio.', 40000.00, 'Cooler Master', 'https://img.pacifiko.com/PROD/resize/1/1000x1000/ZWIwZWFmMD.png', 'Tipo: Disipador de aire, Compatible con Intel y AMD, Ventilador de 120mm', NULL, 50, 0);

-- Producto 2: NZXT Kraken X63 Liquid Cooler
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('NZXT Kraken X63 Liquid Cooler', 'Sistema de enfriamiento líquido todo en uno con iluminación RGB.', 180000.00, 'NZXT', 'https://www.datocms-assets.com/34299/1615584522-kraken-x63frontbnwith-fanpurple.png', 'Tipo: Enfriamiento líquido AIO, Radiador de 280mm, 2 ventiladores de 140mm, Compatible con Intel y AMD', NULL, 20, 0);

-- Producto 3: Noctua NH-D15 Dual Tower CPU Cooler
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Noctua NH-D15 Dual Tower CPU Cooler', 'Disipador de aire premium con rendimiento excepcional y funcionamiento silencioso.', 150000.00, 'Noctua', 'https://images-na.ssl-images-amazon.com/images/I/51H3ITbJWQL.jpg', 'Tipo: Disipador de aire, Dual tower, 2 ventiladores de 140mm, Compatible con Intel y AMD', NULL, 15, 0);

-- Producto 4: Corsair iCUE H100i Elite Capellix Liquid CPU Cooler
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Corsair iCUE H100i Elite Capellix Liquid CPU Cooler', 'Enfriamiento líquido con iluminación RGB y alto rendimiento.', 200000.00, 'Corsair', 'https://extremetechcr.com/tienda/31609/corsair-icue-h100i-elite-capellix-xt-negro.jpg', 'Tipo: Enfriamiento líquido AIO, Radiador de 240mm, 2 ventiladores de 120mm, Compatible con Intel y AMD', NULL, 18, 0);

-- Producto 5: Arctic Liquid Freezer II 360
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Arctic Liquid Freezer II 360', 'Sistema de enfriamiento líquido con excelente eficiencia y bajo nivel de ruido.', 170000.00, 'Arctic', 'https://centrale.cl/wp-content/uploads/RefrigeraciC3B3n-LC3ADquida-CPU-ARCTIC-Liquid-Freezer-II-360-A-RGB-AiO-LGA-17_b7vv1rB.webp', 'Tipo: Enfriamiento líquido AIO, Radiador de 360mm, 3 ventiladores de 120mm, Compatible con Intel y AMD', NULL, 12, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Cooler Master Hyper 212 EVO');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'NZXT Kraken X63 Liquid Cooler');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Noctua NH-D15 Dual Tower CPU Cooler');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Corsair iCUE H100i Elite Capellix Liquid CPU Cooler');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Arctic Liquid Freezer II 360');

-- Asociar los productos a la categoría Enfriamiento (id = 16)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 16);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 16);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 16);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 16);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 16);



-- Producto 1: Monitor Dell UltraSharp U2720Q 27" 4K
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Dell UltraSharp U2720Q 27" 4K Monitor', 'Monitor 4K UHD con panel IPS y amplia gama de colores.', 450000.00, 'Dell', 'https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/peripherals/output-devices/dell/monitors/u2720qm/pdp/u2720qm_monitor_responsive_hero.jpg?fmt=jpg', 'Resolución: 3840x2160, Conectividad: HDMI, DisplayPort, USB-C, Tamaño: 27 pulgadas', NULL, 15, 0);

-- Producto 2: Monitor LG 34WN80C-B UltraWide 34"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('LG 34WN80C-B UltraWide 34" Monitor', 'Monitor curvo UltraWide con resolución QHD para multitarea.', 350000.00, 'LG', 'https://media.us.lg.com/transform/ecomm-PDPGallery-1100x730/0105a9c4-0b5f-46bc-99fd-5510364d2fca/md07000511-zoom-01-jpg', 'Resolución: 3440x1440, Conectividad: HDMI, DisplayPort, USB-C, Tamaño: 34 pulgadas', NULL, 20, 0);

-- Producto 3: Proyector Epson Home Cinema 2150
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Epson Home Cinema 2150 Projector', 'Proyector inalámbrico Full HD ideal para cine en casa.', 600000.00, 'Epson', 'https://mediaserver.goepson.com/ImConvServlet/imconv/1c5847ccd9f67ebc802dd880d2e8e1d2291a9055/1200Wx1200H?use=banner&hybrisId=B2C&assetDescr=hc2150_hero-left_690x460', 'Resolución: 1920x1080, Luminosidad: 2500 lúmenes, Conectividad: HDMI, Wi-Fi', NULL, 10, 0);

-- Producto 4: Monitor ASUS TUF Gaming VG27AQ 27"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('ASUS TUF Gaming VG27AQ 27" Monitor', 'Monitor gaming con frecuencia de actualización de 165Hz y soporte G-Sync.', 300000.00, 'ASUS', 'https://www.asus.com/media/global/products/x2ahzOXdioDZggLv/P_setting_xxx_0_90_end_500.png', 'Resolución: 2560x1440, Frecuencia: 165Hz, Conectividad: HDMI, DisplayPort', NULL, 25, 0);

-- Producto 5: Proyector BenQ TK800M 4K HDR
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('BenQ TK800M 4K HDR Projector', 'Proyector 4K UHD con HDR para entretenimiento en casa.', 900000.00, 'BenQ', 'https://image.benq.com/is/image/benqco/tk800-front30-2?$ResponsivePreset$', 'Resolución: 3840x2160, Luminosidad: 3000 lúmenes, Conectividad: HDMI, VGA', NULL, 8, 0);

-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Dell UltraSharp U2720Q 27" 4K Monitor');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'LG 34WN80C-B UltraWide 34" Monitor');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Epson Home Cinema 2150 Projector');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'ASUS TUF Gaming VG27AQ 27" Monitor');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'BenQ TK800M 4K HDR Projector');

-- Asociar los productos a la categoría Monitores y Proyectores (id = 17)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 17);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 17);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 17);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 17);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 17);


-- Producto 1: HP LaserJet Pro M404dn
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('HP LaserJet Pro M404dn', 'Impresora láser monocromática con conectividad Ethernet y dúplex automático.', 180000.00, 'HP', 'https://m.media-amazon.com/images/I/61n1Vw2BpkL._AC_SL1500_.jpg', 'Velocidad de impresión: hasta 38 ppm, Resolución: 4800 x 600 dpi, Conectividad: USB, Ethernet', NULL, 20, 0);

-- Producto 2: Canon imageCLASS MF743Cdw
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Canon imageCLASS MF743Cdw', 'Impresora láser multifunción a color con escáner, copiadora y fax.', 300000.00, 'Canon', 'https://m.media-amazon.com/images/I/617AECqp8LL.jpg', 'Velocidad de impresión: hasta 28 ppm, Escaneo a doble cara, Conectividad: USB, Ethernet, Wi-Fi', NULL, 15, 0);

-- Producto 3: Epson EcoTank L3150
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Epson EcoTank L3150', 'Impresora multifuncional inalámbrica con sistema de tanque de tinta de alta capacidad.', 150000.00, 'Epson', 'https://cash-business.net/wp-content/uploads/2021/02/epson-ecotanl-L3150.jpg', 'Impresión sin cartuchos, Conectividad: Wi-Fi, Wi-Fi Direct, USB, Resolución: 5760 x 1440 dpi', NULL, 25, 0);

-- Producto 4: Brother DCP-L2550DW
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Brother DCP-L2550DW', 'Impresora láser multifunción monocromática con dúplex automático y conectividad inalámbrica.', 120000.00, 'Brother', 'https://www.brother.com.ph/-/media/ap2/products/printer/dcp-l2550dw/dcp-l2550dw-l.jpg?rev=42cd5e3078084acb80fac12c72c13827', 'Velocidad de impresión: hasta 36 ppm, Escaneo y copia, Conectividad: Wi-Fi, Ethernet, USB', NULL, 18, 0);

-- Producto 5: Canon CanoScan LiDE 300
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Canon CanoScan LiDE 300', 'Escáner compacto y ligero para uso doméstico y de oficina.', 48000.00, 'Canon', 'https://img.pacifiko.com/PROD/resize/1/500x500/YTU2Yzg3N2.jpg', 'Resolución óptica: 2400 x 2400 dpi, Escaneo de alta velocidad, Conectividad: USB', NULL, 30, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'HP LaserJet Pro M404dn');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Canon imageCLASS MF743Cdw');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Epson EcoTank L3150');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Brother DCP-L2550DW');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Canon CanoScan LiDE 300');

-- Asociar los productos a la categoría Impresoras y Scanners (id = 18)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 18);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 18);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 18);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 18);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 18);


-- Producto 1: Apple MacBook Pro 13" M1
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple MacBook Pro 13" M1', 'Laptop con chip M1 de Apple para alto rendimiento y eficiencia.', 1200000.00, 'Apple', 'https://img.pacifiko.com/PROD/resize/1/1000x1000/NDljZDBiMj_1.jpg', 'Pantalla Retina de 13", 8GB RAM, 256GB SSD, Chip M1, macOS', NULL, 10, 0);

-- Producto 2: Dell XPS 13 9310
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Dell XPS 13 9310', 'Laptop ultraportátil con pantalla InfinityEdge y procesador Intel de 11ª generación.', 1100000.00, 'Dell', 'https://m.media-amazon.com/images/I/91MXLpouhoL._AC_SL1500_.jpg', 'Pantalla de 13.4" FHD+, Intel Core i7-1165G7, 16GB RAM, 512GB SSD, Windows 10', NULL, 12, 0);

-- Producto 3: HP Spectre x360 14
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('HP Spectre x360 14', 'Convertible 2 en 1 premium con pantalla táctil y diseño elegante.', 1050000.00, 'HP', 'https://www.cqnetcr.com/108998-thickbox_default/laptop-hp-spectre-x360-convertible-14-ea0001la-13-.jpg', 'Pantalla táctil de 13.5" OLED, Intel Core i7-1165G7, 16GB RAM, 512GB SSD, Windows 10', NULL, 15, 0);

-- Producto 4: Lenovo ThinkPad X1 Carbon Gen 9
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Lenovo ThinkPad X1 Carbon Gen 9', 'Ultrabook empresarial con rendimiento y durabilidad excepcionales.', 1300000.00, 'Lenovo', 'https://baetech.pe/cdn/shop/files/nblen20xxs7qg00_2_800x.jpg?v=1687387552', 'Pantalla de 14" FHD, Intel Core i7-1165G7, 16GB RAM, 512GB SSD, Windows 10 Pro', NULL, 8, 0);

-- Producto 5: ASUS ROG Zephyrus G14
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('ASUS ROG Zephyrus G14', 'Laptop gaming ultraportátil con potente hardware.', 950000.00, 'ASUS', 'https://images-cdn.ubuy.co.in/63513c99def74e5aa17b1166-asus-rog-zephyrus-g14-14.jpg', 'Pantalla de 14" FHD 120Hz, AMD Ryzen 9 5900HS, 16GB RAM, 1TB SSD, NVIDIA GeForce RTX 3060, Windows 10', NULL, 10, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Apple MacBook Pro 13" M1');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Dell XPS 13 9310');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'HP Spectre x360 14');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Lenovo ThinkPad X1 Carbon Gen 9');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'ASUS ROG Zephyrus G14');

-- Asociar los productos a la categoría Laptops (id = 7)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 7);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 7);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 7);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 7);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 7);


-- Producto 1: Logitech MX Anywhere 3 Mouse Inalámbrico
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Logitech MX Anywhere 3 Mouse Inalámbrico', 'Mouse inalámbrico compacto y versátil para uso en cualquier superficie.', 60000.00, 'Logitech', 'https://www.unimart.com/cdn/shop/products/Canvasfotosconguias_5_-2021-12-03T093328.244.jpg?v=1667425390', 'Tecnología: Bluetooth y receptor USB, Batería recargable, Sensor Darkfield de 4000 DPI', NULL, 50, 0);

-- Producto 2: Anker PowerCore+ 26800mAh Power Bank
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Anker PowerCore+ 26800mAh Power Bank', 'Batería externa de alta capacidad con soporte para carga rápida.', 80000.00, 'Anker', 'https://m.media-amazon.com/images/I/61vj2BPDpuL.jpg', 'Capacidad: 26800mAh, Puertos: USB-C y USB-A, Soporta Power Delivery', NULL, 40, 0);

-- Producto 3: Base Enfriadora para Laptop HAVIT
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('HAVIT Base Enfriadora para Laptop', 'Soporte con ventiladores para mantener la laptop fresca durante uso intensivo.', 25000.00, 'HAVIT', 'https://gabastorecr.com/wp-content/uploads/2023/04/image-2.png', 'Ventiladores: 3, Iluminación LED, Ajustable en altura, Compatible con laptops de hasta 17 pulgadas', NULL, 60, 0);

-- Producto 4: Adaptador USB-C a HDMI Apple
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple Adaptador USB-C a Digital AV (HDMI)', 'Adaptador para conectar tu MacBook o iPad Pro a una pantalla HDMI.', 70000.00, 'Apple', 'https://compubetel.com/wp-content/uploads/2024/08/AE000APL27.png', 'Puertos: HDMI, USB-C (para carga), USB-A, Resolución hasta 4K a 60Hz', NULL, 30, 0);

-- Producto 5: Auriculares Bluetooth JBL TUNE 500BT
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('JBL TUNE 500BT Auriculares Bluetooth', 'Auriculares inalámbricos con sonido JBL Pure Bass y diseño ligero.', 35000.00, 'JBL', 'https://www.cqnetcr.com/54252-large_default/audifonos-jbl-tune-500bt-bluetooth-300mah-negro.jpg', 'Conectividad: Bluetooth, Batería: Hasta 16 horas, Micrófono integrado, Asistente de voz', NULL, 55, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Logitech MX Anywhere 3 Mouse Inalámbrico');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Anker PowerCore+ 26800mAh Power Bank');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'HAVIT Base Enfriadora para Laptop');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Apple Adaptador USB-C a Digital AV (HDMI)');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'JBL TUNE 500BT Auriculares Bluetooth');

-- Asociar los productos a la categoría Accesorios para Laptops (id = 8)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 8);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 8);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 8);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 8);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 8);


-- Producto 1: Logitech MX Master 3 Mouse Inalámbrico
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Logitech MX Master 3 Mouse Inalámbrico', 'Mouse inalámbrico avanzado con rueda de desplazamiento MagSpeed y control de múltiples dispositivos.', 65000.00, 'Logitech', 'https://img.pacifiko.com/PROD/resize/1/1000x1000/ZGE2MDlkYT.jpg', 'Conectividad: Bluetooth y receptor USB, Batería recargable, Sensor Darkfield de 4000 DPI', NULL, 40, 0);

-- Producto 2: Razer Huntsman Elite Teclado Mecánico
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Razer Huntsman Elite Teclado Mecánico', 'Teclado mecánico gaming con interruptores optomecánicos y retroiluminación Chroma RGB.', 120000.00, 'Razer', 'https://m.media-amazon.com/images/I/4182pNjGG8L._AC_.jpg', 'Tipo de interruptor: Optomecánico Razer, Iluminación RGB, Reposamuñecas magnético', NULL, 25, 0);

-- Producto 3: Microsoft Sculpt Ergonomic Desktop
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Microsoft Sculpt Ergonomic Desktop', 'Teclado y mouse ergonómicos diseñados para mayor comodidad y reducir la fatiga.', 85000.00, 'Microsoft', 'https://www.unimart.com/cdn/shop/products/12-8_1_1c53da7c-82aa-4271-bb86-3516b60f6471.jpg?v=1662044163', 'Conectividad: Receptor USB, Teclado dividido, Mouse ergonómico, Teclado numérico separado', NULL, 30, 0);

-- Producto 4: HyperX Alloy FPS Pro Teclado Mecánico
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('HyperX Alloy FPS Pro Teclado Mecánico', 'Teclado mecánico compacto sin teclado numérico para jugadores FPS.', 60000.00, 'HyperX', 'https://www.invidcomputers.com/images/000000000041084347784HyperX-Alloy-FPS-Pro-1.jpg', 'Tipo de interruptor: Cherry MX Red, Iluminación LED roja, Diseño tenkeyless', NULL, 35, 0);

-- Producto 5: Logitech G502 HERO Mouse Gaming
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Logitech G502 HERO Mouse Gaming', 'Mouse gaming con sensor HERO 25K, 11 botones programables y pesos ajustables.', 50000.00, 'Logitech', 'https://extremetechcr.com/tienda/5445/logitech-g502-hero.jpg', 'Sensor: HERO 25K DPI, Conectividad: Cable USB, Pesos ajustables, Iluminación RGB', NULL, 45, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Logitech MX Master 3 Mouse Inalámbrico');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Razer Huntsman Elite Teclado Mecánico');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Microsoft Sculpt Ergonomic Desktop');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'HyperX Alloy FPS Pro Teclado Mecánico');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Logitech G502 HERO Mouse Gaming');

-- Asociar los productos a la categoría Teclados y Mouse (id = 19)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 19);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 19);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 19);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 19);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 19);


-- Producto 1: Sony WH-1000XM4
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Sony WH-1000XM4', 'Audífonos inalámbricos con cancelación de ruido líder en la industria y hasta 30 horas de batería.', 250000.00, 'Sony', 'https://www.radioshack.cr/media/catalog/product/m/i/microsoftteams-image_10__mdjfe0evcndqaqyc.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700&format=jpeg', 'Conectividad: Bluetooth, NFC; Cancelación de ruido activa; Asistente de voz; Compatibilidad con Hi-Res Audio', NULL, 20, 0);

-- Producto 2: Bose QuietComfort 35 II
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Bose QuietComfort 35 II', 'Audífonos inalámbricos con cancelación de ruido y acceso al Asistente de Google y Amazon Alexa.', 220000.00, 'Bose', 'https://assets.bose.com/content/dam/Bose_DAM/Web/consumer_electronics/global/products/headphones/qc35_ii/product_silo_images/qc35_ii_black_EC_hero.psd/_jcr_content/renditions/cq5dam.web.320.320.png', 'Conectividad: Bluetooth, NFC; Cancelación de ruido activa; Asistentes de voz integrados; Batería de hasta 20 horas', NULL, 18, 0);

-- Producto 3: Apple AirPods Max
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple AirPods Max', 'Audífonos over-ear con audio de alta fidelidad y ecualización adaptativa.', 380000.00, 'Apple', 'https://d1t5sm6y8yvnce.cloudfront.net/wp-content/uploads/2023/09/B08PZD76NP-1.jpg', 'Conectividad: Bluetooth; Cancelación de ruido activa; Audio espacial con seguimiento dinámico de la cabeza; Integración con Siri', NULL, 10, 0);

-- Producto 4: Sennheiser HD 660 S
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Sennheiser HD 660 S', 'Audífonos abiertos de alta fidelidad para audiófilos con sonido preciso y detallado.', 320000.00, 'Sennheiser', 'https://www.techzilla.cr/wp-content/uploads/magictoolbox_cache/cf3e6ec01aac7cb79461bcfe9d0d075e/2/0/20467/thumb750x750/2728941313/Sennheiser-HD660s_SKU_HE0446.jpg', 'Tipo: Over-ear abierto; Impedancia: 150 ohmios; Respuesta de frecuencia: 10 - 41,000 Hz; Cable desmontable', NULL, 15, 0);

-- Producto 5: Jabra Elite 85h
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Jabra Elite 85h', 'Audífonos inalámbricos con cancelación de ruido inteligente y batería de larga duración.', 180000.00, 'Jabra', 'https://www.jabra.com/-/media/Images/Products/Jabra-Elite-85h/Product/jabra_elite_85h_black_copper_01.png', 'Conectividad: Bluetooth; Cancelación de ruido activa adaptativa; Resistencia al agua y al polvo IP52; Batería de hasta 36 horas', NULL, 22, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Sony WH-1000XM4');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Bose QuietComfort 35 II');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Apple AirPods Max');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Sennheiser HD 660 S');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Jabra Elite 85h');

-- Asociar los productos a la categoría Audífonos (id = 20)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 20);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 20);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 20);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 20);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 20);


-- Producto 1: Apple iPhone 13 Pro Max
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple iPhone 13 Pro Max', 'Smartphone de alto rendimiento con pantalla Super Retina XDR y sistema de cámaras avanzado.', 1200000.00, 'Apple', 'https://icon.co.cr/cdn/shop/files/IMG-12496198_550x.jpg', 'Pantalla de 6.7", Chip A15 Bionic, 128GB almacenamiento, Sistema de cámaras Pro de 12MP, 5G, iOS', NULL, 15, 0);

-- Producto 2: Samsung Galaxy S21 Ultra
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Samsung Galaxy S21 Ultra', 'Teléfono inteligente premium con pantalla Dynamic AMOLED 2X y zoom espacial de 100x.', 1100000.00, 'Samsung', 'https://extremetechcr.com/tienda/33064-home_default/samsung-a25-6-gb-128-gb-blue.jpg', 'Pantalla de 6.8", Exynos 2100, 256GB almacenamiento, Cámara cuádruple de 108MP, 5G, Android', NULL, 20, 0);

-- Producto 3: Xiaomi Mi 11
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Xiaomi Mi 11', 'Smartphone con pantalla AMOLED de alta resolución y rendimiento potente.', 600000.00, 'Xiaomi', 'https://extremetechcr.com/tienda/36327-home_default/samsung-galaxy-a35-5g-8-gb-256-gb-violeta.jpg', 'Pantalla de 6.81", Snapdragon 888, 128GB almacenamiento, Cámara de 108MP, 5G, Android', NULL, 25, 0);

-- Producto 4: Huawei P40 Pro
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Huawei P40 Pro', 'Teléfono con diseño elegante y sistema de cámaras Leica para fotografía profesional.', 800000.00, 'Huawei', 'https://extremetechcr.com/tienda/33131-home_default/samsung-s24-8-gb-256-gb-cobalt-violet.jpg', 'Pantalla de 6.58", Kirin 990 5G, 256GB almacenamiento, Cámara cuádruple de 50MP, 5G, Android (sin servicios de Google)', NULL, 18, 0);

-- Producto 5: OnePlus 9 Pro
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('OnePlus 9 Pro', 'Smartphone con pantalla Fluid AMOLED y carga rápida Warp Charge 65T.', 900000.00, 'OnePlus', 'https://extremetechcr.com/tienda/33401-home_default/samsung-galaxy-fold-5-12gb-512gb-phantom-black.jpg', 'Pantalla de 6.7", Snapdragon 888, 256GB almacenamiento, Cámara cuádruple de 48MP co-desarrollada con Hasselblad, 5G, Android', NULL, 22, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Apple iPhone 13 Pro Max');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Samsung Galaxy S21 Ultra');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Xiaomi Mi 11');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Huawei P40 Pro');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'OnePlus 9 Pro');

-- Asociar los productos a la categoría Celulares (id = 21)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 21);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 21);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 21);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 21);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 21);


-- Producto 1: Apple iPad Pro 12.9" (5ª generación)
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple iPad Pro 12.9" (5ª generación)', 'Tablet de alto rendimiento con pantalla Liquid Retina XDR y chip M1.', 1200000.00, 'Apple', 'https://extremetechcr.com/tienda/32057-home_default/samsung-galaxy-tab-a8-32-gb-wifi-gray.jpg', 'Pantalla de 12.9", Chip M1, 128GB almacenamiento, Wi-Fi, Cámara de 12MP, iPadOS', NULL, 10, 0);

-- Producto 2: Samsung Galaxy Tab S7+
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Samsung Galaxy Tab S7+', 'Tablet premium con pantalla Super AMOLED y soporte para S Pen.', 900000.00, 'Samsung', 'https://extremetechcr.com/tienda/38921-home_default/tablet-xiaomi-redmi-pad-se-4gb-128gb-lavender-purple.jpg', 'Pantalla de 12.4", Snapdragon 865+, 128GB almacenamiento, Wi-Fi, Cámara de 13MP, Android', NULL, 15, 0);

-- Producto 3: Microsoft Surface Pro 7
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Microsoft Surface Pro 7', 'Tablet y laptop 2 en 1 con rendimiento versátil y diseño ultraligero.', 850000.00, 'Microsoft', 'https://extremetechcr.com/tienda/32583-home_default/tablet-xiaomi-redmi-pad-se-4gb-128gb-graphite-gray.jpg', 'Pantalla de 12.3", Intel Core i5, 8GB RAM, 128GB SSD, Windows 10', NULL, 12, 0);

-- Producto 4: Lenovo Tab P11 Pro
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Lenovo Tab P11 Pro', 'Tablet con pantalla OLED y rendimiento optimizado para entretenimiento.', 500000.00, 'Lenovo', 'https://extremetechcr.com/tienda/36488-home_default/lenovo-tab-m11-tab-pen-plus-folio-case.jpg', 'Pantalla de 11.5" OLED, Snapdragon 730G, 128GB almacenamiento, Wi-Fi, Android', NULL, 18, 0);

-- Producto 5: Huawei MatePad Pro
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Huawei MatePad Pro', 'Tablet con diseño elegante y rendimiento potente, compatible con M-Pencil.', 650000.00, 'Huawei', 'https://extremetechcr.com/tienda/32916-home_default/samsung-galaxy-tab-s9-fe-6-gb-ram-128-gb-gris.jpg', 'Pantalla de 10.8", Kirin 990, 128GB almacenamiento, Wi-Fi, Cámara de 13MP, HarmonyOS', NULL, 20, 0);

-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Apple iPad Pro 12.9" (5ª generación)');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Samsung Galaxy Tab S7+');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Microsoft Surface Pro 7');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Lenovo Tab P11 Pro');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Huawei MatePad Pro');

-- Asociar los productos a la categoría Tablets (id = 22)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 22);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 22);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 22);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 22);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 22);


-- Producto 1: Samsung Wireless Charger Duo
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Samsung Wireless Charger Duo', 'Cargador inalámbrico para cargar dos dispositivos simultáneamente.', 60000.00, 'Samsung', 'https://extremetechcr.com/tienda/29427-home_default/cargador-usb-argom-tech-1a-arg-ac-0104.jpg', 'Compatibilidad: Dispositivos con carga inalámbrica Qi, Entrada: USB-C', NULL, 40, 0);

-- Producto 2: Apple AirTag
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Apple AirTag', 'Dispositivo de rastreo para localizar objetos perdidos con la app Buscar.', 30000.00, 'Apple', 'https://extremetechcr.com/tienda/23851-home_default/cargador-para-carro-argom-tech-dual-usb-21a-arg-ac-0102bk.jpg', 'Conectividad: Bluetooth, Chip U1 Ultra Wideband, Resistencia al agua IP67', NULL, 50, 0);

-- Producto 3: JBL Tune 225TWS Audífonos Bluetooth
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('JBL Tune 225TWS Audífonos Bluetooth', 'Audífonos inalámbricos True Wireless con sonido Pure Bass.', 70000.00, 'JBL', 'https://extremetechcr.com/tienda/29404-home_default/soporte-de-celular-unno-tekno-para-carro-de-cuello-corto-ch3003bk.jpg', 'Conectividad: Bluetooth 5.0, Batería: Hasta 25 horas con estuche, Micrófono integrado', NULL, 35, 0);

-- Producto 4: Spigen QS11 Soporte Magnético para Auto
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Spigen QS11 Soporte Magnético para Auto', 'Soporte magnético para sujetar el celular en la rejilla de ventilación del auto.', 15000.00, 'Spigen', 'https://extremetechcr.com/tienda/32158-home_default/soporte-de-celular-argom-tech-para-salida-de-aire-para-carro-negro-arg-ac-0327bk.jpg', 'Compatibilidad: Universal, Instalación: Rejilla de ventilación, Incluye placas metálicas adhesivas', NULL, 60, 0);

-- Producto 5: Anker PowerCore 10000mAh Power Bank
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Anker PowerCore 10000mAh Power Bank', 'Batería portátil compacta para cargar dispositivos móviles.', 30000.00, 'Anker', 'https://extremetechcr.com/tienda/38618-home_default/cargador-aon-de-pared-ao-cr-1006.jpg', 'Capacidad: 10000mAh, Salida: USB-A, Tecnología PowerIQ para carga rápida', NULL, 45, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Samsung Wireless Charger Duo');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Apple AirTag');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'JBL Tune 225TWS Audífonos Bluetooth');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Spigen QS11 Soporte Magnético para Auto');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Anker PowerCore 10000mAh Power Bank');

-- Asociar los productos a la categoría Accesorios para Celulares y Tablets (id = 23)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 23);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 23);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 23);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 23);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 23);

-- Producto 1: Samsung QLED Q80T 65"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Samsung QLED Q80T 65"', 'Televisor QLED 4K con tecnología de retroiluminación Direct Full Array y Quantum Processor 4K.', 1200000.00, 'Samsung', 'https://extremetechcr.com/tienda/38974-home_default/xiaomi-a-50-2025-4k-google-tv.jpg', 'Resolución: 3840x2160, Tamaño: 65", HDR10+, Smart TV con Tizen OS', NULL, 10, 0);

-- Producto 2: LG OLED CX 55"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('LG OLED CX 55"', 'Televisor OLED 4K con negros perfectos y procesador inteligente α9 Gen 3 AI Processor 4K.', 1400000.00, 'LG', 'https://extremetechcr.com/tienda/34681-home_default/jvc-58-4k-google-tv-lt-58kb538.jpg', 'Resolución: 3840x2160, Tamaño: 55", HDR10 Pro, Dolby Vision IQ, Smart TV con webOS', NULL, 8, 0);

-- Producto 3: Sony Bravia X900H 65"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Sony Bravia X900H 65"', 'Televisor LED 4K Full Array con soporte para HDMI 2.1 y Android TV.', 1100000.00, 'Sony', 'https://extremetechcr.com/tienda/38806-home_default/xiaomi-a-pro-65-pulgadas-2025-4k-google-tv.jpg', 'Resolución: 3840x2160, Tamaño: 65", HDR, Dolby Vision, Smart TV con Android TV', NULL, 12, 0);

-- Producto 4: TCL 6-Series Roku TV 55"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('TCL 6-Series Roku TV 55"', 'Televisor QLED 4K con tecnología Mini-LED y plataforma Roku TV.', 600000.00, 'TCL', 'https://extremetechcr.com/tienda/29280-home_default/televisor-xiaomi-q2-55-4k-qled-l55m7-q2sa.jpg', 'Resolución: 3840x2160, Tamaño: 55", HDR Pro Pack con Dolby Vision, Smart TV con Roku OS', NULL, 15, 0);

-- Producto 5: Hisense H8G Quantum Series 65"
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Hisense H8G Quantum Series 65"', 'Televisor ULED 4K con colores vibrantes y tecnología Quantum Dot.', 700000.00, 'Hisense', 'https://extremetechcr.com/tienda/39878-home_default/xiaomi-a-series-32-hd.jpg', 'Resolución: 3840x2160, Tamaño: 65", Dolby Vision HDR, Smart TV con Android TV', NULL, 20, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Samsung QLED Q80T 65"');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'LG OLED CX 55"');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'Sony Bravia X900H 65"');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'TCL 6-Series Roku TV 55"');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Hisense H8G Quantum Series 65"');

-- Asociar los productos a la categoría Televisores (id = 24)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 24);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 24);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 24);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 24);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 24);

-- Producto 1: Bose Soundbar 700
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Bose Soundbar 700', 'Barra de sonido premium con sonido envolvente y control por voz integrado.', 600000.00, 'Bose', 'https://extremetechcr.com/tienda/31850-home_default/genius-sp-hf180-madera.jpg', 'Conectividad: Wi-Fi, Bluetooth, HDMI ARC; Soporte para Alexa y Google Assistant', NULL, 10, 0);

-- Producto 2: Sony HT-G700 Barra de Sonido
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Sony HT-G700 Barra de Sonido', 'Barra de sonido de 3.1 canales con Dolby Atmos y subwoofer inalámbrico.', 350000.00, 'Sony', 'https://extremetechcr.com/tienda/25467-home_default/parlante-unno-tekno-desktop-speakers-sp9025bk.jpg', 'Conectividad: Bluetooth, HDMI eARC/ARC, Entrada óptica; Tecnología Vertical Surround Engine', NULL, 15, 0);

-- Producto 3: JBL PartyBox 310
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('JBL PartyBox 310', 'Altavoz portátil de alta potencia con efectos de luz y batería recargable.', 450000.00, 'JBL', 'https://extremetechcr.com/tienda/25472-home_default/parlante-unno-pulse-tws-sp9209bk.jpg', 'Conectividad: Bluetooth, USB, Entrada para micrófono y guitarra; Batería: Hasta 18 horas', NULL, 12, 0);

-- Producto 4: Yamaha RX-V6A Receptor AV
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Yamaha RX-V6A Receptor AV', 'Receptor AV de 7.2 canales con soporte para 8K y funciones avanzadas.', 550000.00, 'Yamaha', 'https://extremetechcr.com/tienda/39309-home_default/energy-system-sunrise-bluetooth-navy-bloom.jpg', 'Soporte: Dolby Atmos, DTS:X; Conectividad: HDMI 2.1, Wi-Fi, Bluetooth, AirPlay 2', NULL, 8, 0);

-- Producto 5: Klipsch Reference R-625FA Altavoces de Piso
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Klipsch Reference R-625FA Altavoces de Piso', 'Par de altavoces de piso con canales integrados para Dolby Atmos.', 700000.00, 'Klipsch', 'https://extremetechcr.com/tienda/36059-home_default/genius-sp-925bt-bluetooth-chocolate.jpg', 'Tipo: Altavoces de piso 2.5 vías; Potencia: 100W RMS; Sensibilidad: 96 dB', NULL, 5, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Bose Soundbar 700');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Sony HT-G700 Barra de Sonido');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'JBL PartyBox 310');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Yamaha RX-V6A Receptor AV');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Klipsch Reference R-625FA Altavoces de Piso');

-- Asociar los productos a la categoría Audio (id = 25)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 25);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 25);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 25);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 25);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 25);



-- Producto 1: Canon EOS R5
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Canon EOS R5', 'Cámara mirrorless profesional con capacidad de grabación de video 8K.', 2500000.00, 'Canon', 'https://extremetechcr.com/tienda/21986-home_default/baston-extensor-y-tripode-gopro-shorty-afttm-001.jpg', 'Sensor CMOS full-frame de 45MP, Video 8K RAW, Estabilización de imagen en el cuerpo, Dual Pixel CMOS AF II', NULL, 5, 0);

-- Producto 2: Sony Alpha a7 III
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Sony Alpha a7 III', 'Cámara mirrorless de fotograma completo con rendimiento versátil y enfoque automático rápido.', 1500000.00, 'Sony', 'https://extremetechcr.com/tienda/38727-home_default/camara-de-accion-argom-epiccam85-4k-arg-ac-9185bk.jpg', 'Sensor CMOS Exmor R de 24.2MP, Video 4K, Estabilización de imagen de 5 ejes, Sistema AF híbrido rápido', NULL, 10, 0);

-- Producto 3: GoPro HERO9 Black
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('GoPro HERO9 Black', 'Cámara de acción resistente con capacidad de video 5K y pantalla frontal.', 350000.00, 'GoPro', 'https://extremetechcr.com/tienda/35752-home_default/gopro-max-lens-mod-20-adwal-002.jpg', 'Video 5K30 y 4K60, Fotos de 20MP, Estabilización HyperSmooth 3.0, Resistente al agua hasta 10m', NULL, 20, 0);

-- Producto 4: Panasonic Lumix GH5
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Panasonic Lumix GH5', 'Cámara sin espejo orientada a video con grabación interna 4K 10-bit 4:2:2.', 1300000.00, 'Panasonic', 'https://extremetechcr.com/tienda/38944-home_default/gopro-hero-12-black.jpg', 'Sensor Digital Live MOS de 20.3MP, Video 4K60p, Estabilización Dual IS 2, Sin límite de tiempo de grabación', NULL, 8, 0);

-- Producto 5: Nikon D850
INSERT INTO Product (name, description, price, brand, photo, technical_stuff, id_offer, stock, n_sales) VALUES ('Nikon D850', 'Cámara DSLR de fotograma completo con alta resolución y rendimiento rápido.', 2200000.00, 'Nikon', 'https://extremetechcr.com/tienda/39534-home_default/macro-lens-mod-go-pro-hero-hb-serires-hero13-black-aewal-021.jpg', 'Sensor CMOS BSI de 45.7MP, Video 4K UHD, Sistema AF de 153 puntos, Pantalla táctil inclinable', NULL, 6, 0);


-- Obtener los IDs de los productos insertados
SET @product_id1 = (SELECT id FROM Product WHERE name = 'Canon EOS R5');
SET @product_id2 = (SELECT id FROM Product WHERE name = 'Sony Alpha a7 III');
SET @product_id3 = (SELECT id FROM Product WHERE name = 'GoPro HERO9 Black');
SET @product_id4 = (SELECT id FROM Product WHERE name = 'Panasonic Lumix GH5');
SET @product_id5 = (SELECT id FROM Product WHERE name = 'Nikon D850');

-- Asociar los productos a la categoría Cámaras y Videocámaras (id = 26)
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id1, 26);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id2, 26);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id3, 26);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id4, 26);
INSERT INTO Product_Category (id_product, id_category) VALUES (@product_id5, 26);




