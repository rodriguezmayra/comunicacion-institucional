-- Insertar datos de prueba en la base de datos comunicacion institucional

-- Nota:
-- La mayoría de los registros en este script fueron generados con ayuda de inteligencia artificial,
-- esta herramienta se utilizó como apoyo al buscar realismo y coherencia en los mismos permitiendonos
-- generar cantidades más grandes de datos de manera eficiente y al mismo tiempo disminuir los posibles
-- errores humanos.
-- La estructura de cada tabla fue diseñada e implementada de forma 100% manual por el equipo, 
-- los datos fueron revisados y el script fue probado antes de ser subido al repositorio.


USE comunicacion_institucional;

INSERT INTO usuarios (correo_electronico, contrasenia, nombre, rol) VALUES

    -- A todos los estudiantes de prueba se les asignó el mismo hash, el cual corresponde a la contraseña 'estudiante123'
    ('lucas.martinez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Lucas Martínez', 'estudiante'),
    ('camila.rodriguez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Camila Rodríguez', 'estudiante'),
    ('thiago.gonzalez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Thiago González', 'estudiante'),
    ('mateo.pereira@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Mateo Pereira', 'estudiante'),
    ('valentina.morales@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Valentina Morales', 'estudiante'),
    ('santiago.pereira@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Santiago Pereira', 'estudiante'),
    ('florencia.silva@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Florencia Silva', 'estudiante'),
    ('joel.cabrera@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Joel Cabrera', 'estudiante'),
    ('martina.cabrera@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Martina Cabrera', 'estudiante'),
    ('joaquin.romero@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Joaquín Romero', 'estudiante'),
    ('agustina.torres@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Agustina Torres', 'estudiante'),
    ('milagros.acosta@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Milagros Acosta', 'estudiante'),
    ('franco.benitez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Franco Benítez', 'estudiante'),
    ('julieta.mendez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Julieta Méndez', 'estudiante'),
    ('lucas.bentancur@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Lucas Bentancur', 'estudiante'),
    ('renata.fagundez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Renata Fagúndez', 'estudiante'),
    ('benjamin.sosa@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Benjamín Sosa', 'estudiante'),
    ('morena.vazquez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Morena Vázquez', 'estudiante'),
    ('tobias.mendez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Tobías Méndez', 'estudiante'),
    ('facundo.gimenez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Facundo Giménez', 'estudiante'),
    ('abril.castro@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Abril Castro', 'estudiante'),
    ('nahuel.lemos@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Nahuel Lemos', 'estudiante'),
    ('mora.pintos@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Mora Pintos', 'estudiante'),
    ('luciana.pintos@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Luciana Pintos', 'estudiante'),
    ('matias.nunez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Matías Núñez', 'estudiante'),
    ('antonella.ramos@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Antonella Ramos', 'estudiante'),
    ('santino.arias@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Santino Arias', 'estudiante'),
    ('bruno.martinez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Bruno Martínez', 'estudiante'),
    ('micaela.arias@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Micaela Arias', 'estudiante'),
    ('lautaro.fernandez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Lautaro Fernández', 'estudiante'),
    ('valeria.silveira@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Valeria Silveira', 'estudiante'),
    ('maia.rios@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Maia Ríos', 'estudiante'),
    ('dylan.suarez@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Dylan Suárez', 'estudiante'),
    ('bianca.oliveira@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Bianca Oliveira', 'estudiante'),
    ('agustin.paz@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Agustín Paz', 'estudiante'),
    ('santino.techera@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Santino Techera', 'estudiante'),
    ('carolina.paz@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Carolina Paz', 'estudiante'),
    ('leonardo.mora@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Leonardo Mora', 'estudiante'),
    ('ines.correa@correo.com', '$2y$10$ILBkwnne4nnRiuEoi9bCyOLjfgfyOWAUvRTeOrqM/DTxBirHC5mxG', 'Inés Correa', 'estudiante'),
    
    -- A todos los docentes de prueba se les asignó el mismo hash, el cual corresponde a la contraseña 'docente123'
    ('ana.pereira01@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Ana Pereira', 'docente'),
    ('diego.silveira02@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Diego Silveira', 'docente'),
    ('lucía.fernández03@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Lucía Fernández', 'docente'),
    ('martín.suárez04@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Martín Suárez', 'docente'),
    ('valentina.rodríguez05@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Valentina Rodríguez', 'docente'),
    ('federico.méndez06@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Federico Méndez', 'docente'),
    ('camila.sosa07@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Camila Sosa', 'docente'),
    ('nicolás.acosta08@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Nicolás Acosta', 'docente'),
    ('florencia.castro09@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Florencia Castro', 'docente'),
    ('gabriel.olivera10@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Gabriel Olivera', 'docente'),
    ('mariana.techera11@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Mariana Techera', 'docente'),
    ('andrés.pérez12@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Andrés Pérez', 'docente'),
    ('carolina.viera13@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Carolina Viera', 'docente'),
    ('santiago.lópez14@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Santiago López', 'docente'),
    ('paula.gonzález15@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Paula González', 'docente'),
    ('bruno.ramos16@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Bruno Ramos', 'docente'),
    ('micaela.díaz17@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Micaela Díaz', 'docente'),
    ('rodrigo.cabrera18@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Rodrigo Cabrera', 'docente'),
    ('sofía.morales19@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Sofía Morales', 'docente'),
    ('juan.pintos20@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Juan Pintos', 'docente'),
    ('agustina.silva21@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Agustina Silva', 'docente'),
    ('emiliano.mora22@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Emiliano Mora', 'docente'),
    ('natalia.correa23@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Natalia Correa', 'docente'),
    ('pablo.acosta24@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Pablo Acosta', 'docente'),
    ('romina.fagúndez25@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Romina Fagúndez', 'docente'),
    ('ignacio.paz26@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Ignacio Paz', 'docente'),
    ('belén.ríos27@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Belén Ríos', 'docente'),
    ('facundo.lemos28@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Facundo Lemos', 'docente'),
    ('victoria.méndez29@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Victoria Méndez', 'docente'),
    ('sebastián.núñez30@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Sebastián Núñez', 'docente'),
    ('julieta.sosa31@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Julieta Sosa', 'docente'),
    ('mateo.giménez32@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Mateo Giménez', 'docente'),
    ('clara.pereira33@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Clara Pereira', 'docente'),
    ('leandro.méndez34@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Leandro Méndez', 'docente'),
    ('milagros.vázquez35@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Milagros Vázquez', 'docente'),
    ('tomás.silva36@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Tomás Silva', 'docente'),
    ('elena.pereira37@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Elena Pereira', 'docente'),
    ('ramiro.cabrera38@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Ramiro Cabrera', 'docente'),
    ('noelia.sosa39@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Noelia Sosa', 'docente'),
    ('gonzalo.méndez40@correo.com', '$2y$10$MtSRcoFyf02esdGq7NQI.ONj446NBg2VodArwaitHppCR4djKxbdG', 'Gonzalo Méndez', 'docente'),

    -- Administrativos con el hash correspondiente a 'administrativo123'.
    ('facundo.sosa@correo.com', '$2y$12$WlmwOoY4iLRhoaNdtBUe3.SQ35Swx5jGSD3dyhhTosQbkQFFTP8ze', 'Facundo Sosa', 'administrativo'),
    ('gabriela.mendez@correo.com', '$2y$12$WlmwOoY4iLRhoaNdtBUe3.SQ35Swx5jGSD3dyhhTosQbkQFFTP8ze', 'Gabriela Méndez', 'administrativo'),
    ('hector.nunez@correo.com', '$2y$12$WlmwOoY4iLRhoaNdtBUe3.SQ35Swx5jGSD3dyhhTosQbkQFFTP8ze', 'Héctor Núñez', 'administrativo'),
    ('ines.castro@correo.com', '$2y$12$WlmwOoY4iLRhoaNdtBUe3.SQ35Swx5jGSD3dyhhTosQbkQFFTP8ze', 'Inés Castro', 'administrativo'),
    ('juan.romero@correo.com', '$2y$12$WlmwOoY4iLRhoaNdtBUe3.SQ35Swx5jGSD3dyhhTosQbkQFFTP8ze', 'Juan Romero', 'administrativo');

INSERT INTO orientaciones (nombre) VALUES
    ('Tecnologías de la Información'),
    ('Gestión y Administración'),
    ('Estética Personal'),
    ('Gastronomía'),
    ('Agrario Rural'),
    ('Electromecánica'),
    ('Instalaciones Eléctricas'),
    ('Carpintería'),
    ('Comercio y Logística');

INSERT INTO grupos (nombre, turno, nombre_orientacion) VALUES
    ('2 MC', 'Vespertino', 'Tecnologías de la Información'),
    ('3 MC', 'Nocturno', 'Tecnologías de la Información'),
    ('1 MA', 'Vespertino', 'Gestión y Administración'),
    ('2 DA', 'Vespertino', 'Estética Personal'),
    ('1 BP', 'Matutino', 'Gastronomía'),
    ('2 MB', 'Vespertino', 'Agrario Rural'),
    ('1 EM', 'Matutino', 'Electromecánica'),
    ('2 DB', 'Matutino', 'Instalaciones Eléctricas'),
    ('1 CA', 'Matutino', 'Carpintería'),
    ('3 CL', 'Nocturno', 'Comercio y Logística');


INSERT INTO materias (nombre) VALUES
    ('Matemáticas'),
    ('Lengua y Comunicación'),
    ('Ciudadanía y Sociedad'),
    ('Inglés'),
    ('Historia económica'),
    ('Biología'),
    ('Química'),
    ('Física'),
    ('Filosofía'),
    ('Sociología'),
    ('Programación'),
    ('Bases de Datos'),
    ('Redes Informáticas'),
    ('Sistemas Operativos'),
    ('Ingeniería de Software'),
    ('Soporte IT'),
    ('Lógica y Métodos Discretos'),
    ('Educación Financiera'),
    ('Introducción a la Organización y su Gestión'),
    ('Derecho'),
    ('Administración'),
    ('Contabilidad'),
    ('Logística'),
    ('Comercio'),
    ('Marketing'),
    ('Gestión Empresarial'),
    ('Cosmetología'),
    ('Estética Facial'),
    ('Estética Corporal'),
    ('Maquillaje Profesional'),
    ('Peluquería'),
    ('Manicuría'),
    ('Gestión de Servicios de Belleza'),
    ('Técnicas de Cocina'),
    ('Panadería'),
    ('Repostería'),
    ('Bromatología'),
    ('Nutrición'),
    ('Servicios Gastronómicos'),
    ('Enología'),
    ('Biología Aplicada a la Agrotecnología'),
    ('Procesos de Producción Agropecuaria'),
    ('Práctica de Producción Vegetal'),
    ('Práctica de Producción Animal'),
    ('Producción Agraria'),
    ('Agroecología'),
    ('Maquinaria Agrícola'),
    ('Tecnología Mecánica'),
    ('Electrotecnia'),
    ('Sistemas Electromecánicos'),
    ('Mantenimiento Industrial'),
    ('Dibujo Técnico'),
    ('Mecánica Aplicada'),
    ('Automatización Industrial'),
    ('Instalaciones Eléctricas'),
    ('Máquinas Eléctricas'),
    ('Mediciones Eléctricas'),
    ('Seguridad Eléctrica'),
    ('Automatismos Eléctricos'),
    ('Electrónica Aplicada'),
    ('Tecnología de la Madera'),
    ('Diseño y Construcción de Mobiliario'),
    ('Procesos de Carpintería'),
    ('Máquinas y Herramientas'),
    ('Acabados en Madera'),
    ('Diseño Asistido por Computadora'),
    ('APT'),
    ('Legislación'),
    ('Computación Aplicada'),
    ('Gestión de Proyectos'),
    ('Laboratorio de Robótica'),
    ('Circuitos y Dispositivos Electrónicos'),
    ('Sistemas Mecánicos Automatizados'),
    ('Laboratorio de Sistemas Mecánicos'),
    ('Tecnología de los Procesos'),
    ('Comunicación Visual y Diseño'),
    ('Tecnologías Digitales'),
    ('Expresión Digital'),
    ('Electiva'), 
    ('Tutoría de Proyecto UTULAB');

INSERT INTO dias (nombre) VALUES
    ('Lunes'),
    ('Martes'),
    ('Miércoles'),
    ('Jueves'),
    ('Viernes'),
    ('Sábado'),
    ('Domingo');

INSERT INTO docentes (correo_electronico) VALUES
    ('ana.pereira01@correo.com'),
    ('diego.silveira02@correo.com'),
    ('lucía.fernández03@correo.com'),
    ('martín.suárez04@correo.com'),
    ('valentina.rodríguez05@correo.com'),
    ('federico.méndez06@correo.com'),
    ('camila.sosa07@correo.com'),
    ('nicolás.acosta08@correo.com'),
    ('florencia.castro09@correo.com'),
    ('gabriel.olivera10@correo.com'),
    ('mariana.techera11@correo.com'),
    ('andrés.pérez12@correo.com'),
    ('carolina.viera13@correo.com'),
    ('santiago.lópez14@correo.com'),
    ('paula.gonzález15@correo.com'),
    ('bruno.ramos16@correo.com'),
    ('micaela.díaz17@correo.com'),
    ('rodrigo.cabrera18@correo.com'),
    ('sofía.morales19@correo.com'),
    ('juan.pintos20@correo.com'),
    ('agustina.silva21@correo.com'),
    ('emiliano.mora22@correo.com'),
    ('natalia.correa23@correo.com'),
    ('pablo.acosta24@correo.com'),
    ('romina.fagúndez25@correo.com'),
    ('ignacio.paz26@correo.com'),
    ('belén.ríos27@correo.com'),
    ('facundo.lemos28@correo.com'),
    ('victoria.méndez29@correo.com'),
    ('sebastián.núñez30@correo.com'),
    ('julieta.sosa31@correo.com'),
    ('mateo.giménez32@correo.com'),
    ('clara.pereira33@correo.com'),
    ('leandro.méndez34@correo.com'),
    ('milagros.vázquez35@correo.com'),
    ('tomás.silva36@correo.com'),
    ('elena.pereira37@correo.com'),
    ('ramiro.cabrera38@correo.com'),
    ('noelia.sosa39@correo.com'),
    ('gonzalo.méndez40@correo.com');

INSERT INTO administrativos (correo_electronico) VALUES
    ('facundo.sosa@correo.com'),
    ('gabriela.mendez@correo.com'),
    ('hector.nunez@correo.com'),
    ('ines.castro@correo.com'),
    ('juan.romero@correo.com');

INSERT INTO estudiantes (correo_electronico, nombre_grupo) VALUES
    ('lucas.martinez@correo.com', '2 MC'),
    ('camila.rodriguez@correo.com', '2 MC'),
    ('thiago.gonzalez@correo.com', '2 MC'),
    ('mateo.pereira@correo.com', '2 MC'),
    ('valentina.morales@correo.com', '3 MC'),
    ('santiago.pereira@correo.com', '3 MC'),
    ('florencia.silva@correo.com', '3 MC'),
    ('joel.cabrera@correo.com', '3 MC'),
    ('martina.cabrera@correo.com', '1 MA'),
    ('joaquin.romero@correo.com', '1 MA'),
    ('agustina.torres@correo.com', '1 MA'),
    ('milagros.acosta@correo.com', '2 DA'),
    ('franco.benitez@correo.com', '2 DA'),
    ('julieta.mendez@correo.com', '2 DA'),
    ('lucas.bentancur@correo.com', '2 DA'),
    ('renata.fagundez@correo.com', '1 BP'),
    ('benjamin.sosa@correo.com', '1 BP'),
    ('morena.vazquez@correo.com', '1 BP'),
    ('tobias.mendez@correo.com', '1 BP'),
    ('facundo.gimenez@correo.com', '2 MB'),
    ('abril.castro@correo.com', '2 MB'),
    ('nahuel.lemos@correo.com', '2 MB'),
    ('mora.pintos@correo.com', '2 MB'),
    ('luciana.pintos@correo.com', '1 EM'),
    ('matias.nunez@correo.com', '1 EM'),
    ('antonella.ramos@correo.com', '1 EM'),
    ('santino.arias@correo.com', '1 EM'),
    ('bruno.martinez@correo.com', '2 DB'),
    ('micaela.arias@correo.com', '2 DB'),
    ('lautaro.fernandez@correo.com', '2 DB'),
    ('valeria.silveira@correo.com', '2 DB'),
    ('maia.rios@correo.com', '1 CA'),
    ('dylan.suarez@correo.com', '1 CA'),
    ('bianca.oliveira@correo.com', '1 CA'),
    ('agustin.paz@correo.com', '1 CA'),
    ('santino.techera@correo.com', '3 CL'),
    ('carolina.paz@correo.com', '3 CL'),
    ('leonardo.mora@correo.com', '3 CL'),
    ('ines.correa@correo.com', '3 CL');

INSERT INTO notificaciones (identificador, nombre, descripcion, publico, fecha) VALUES
    (1, '¡Todos de Celeste! - Copa del mundo 2026 en la Escuela Técnica Dionisio Díaz',
    'Concursos:

    - Al mejor atuendo representativo de Uruguay
    - A la mejor coreografía de las canciones de Uruguay
    - A la clase que mejor represente la selección
    - A la dupla que mejor domine el balón con la cabeza',
    'general', '2026-06-11'),
    (2, 'La merienda es importante',
    'Nos da energía, mejora la concentración y nos ayuda a aprender mejor.

    Por ello, en los recreos de cada turno habrá merienda.
    Matutino: 10:20
    Vespertino: 16:10
    Nocturno: 20:10

    Si querés participar, anotate en Adscripción y solicitá allí que te abran la cantina.',
    'restringido', '2026-06-13'),
    (3, 'Inasistencia: Paula González',
    'Se comunica a los estudiantes de 2 DA que mañana no concurrirá la profesora Paula González.',
    '2 DA', '2026-06-16'),
    (4, 'Acto conmemorativo del natalicio del prócer José G. Artigas',
    'La escuela invita a toda la comunidad educativa y al público en general al acto conmemorativo y Jura de Fidelidad a la Bandera, que se llevará a cabo el viernes 19 de junio a las 10:10 horas en el local escolar.

    ¡Los esperamos!',
    'general', '2026-06-17'),
    (5, 'Retorno de clases: Práctica de Producción Vegetal',
    'Esta semana se retoman las clases de Práctica de Producción Vegetal.

    La profesora Natalia Correa realizará la suplencia de la profesora Verónica Méndez durante este período.

    ¡No falten!',
    '2 MB', '2026-06-23'),
    (6, 'Retorno de clases: Práctica de Producción Vegetal',
    'Esta semana se retoman las clases de Práctica de Producción Vegetal.

    La profesora Natalia Correa realizará la suplencia de la profesora Verónica Méndez durante este período.

    ¡No falten!',
    '2 MB', '2026-06-23'),
    (7, 'Prueba de suficiencia de Inglés',
    'Se informa a los estudiantes que la prueba de suficiencia de Inglés se realizará el martes 7 de julio a las 15:00 horas, en la Escuela Técnica Dionisio Díaz.

    Los interesados deberán realizar el trámite de inscripción en Bedelía.

    Se recomienda concurrir con anticipación.',
    'restringido', '2026-06-25'),
    (8, '¡Felices vacaciones de invierno!',
    'La Escuela Técnica Dionisio Díaz les desea unas muy felices vacaciones de invierno.

    Descansen, disfruten de este tiempo y aprovechen para recargar energías.

    ¡Nos reencontramos pronto!',
    'general', '2026-06-26'),
    (9, 'Convocatoria a la Feria Gastronómica',
    'Invitamos a estudiantes, docentes y familias a participar de una nueva edición de nuestra Feria Gastronómica.

    Habrá diferentes propuestas elaboradas por los estudiantes, demostraciones y degustaciones.

    La actividad busca compartir el trabajo realizado en las distintas áreas de formación.

    ¡Los esperamos!',
    'general', '2026-07-20'),
    (10, 'Show de Talentos 2026',
    '¡Llegó el momento de mostrar tu talento!

    Te invitamos a participar de nuestro Show de Talentos, que se realizará el viernes 14 de agosto a las 15:00 horas en la escuela.

    Podés participar individualmente o en grupo con propuestas de:
    - Teatro
    - Baile
    - Canto
    - Instrumentos musicales

    Habrá premios para el primer, segundo y tercer puesto, además de un reconocimiento a la mejor hinchada.

    Las inscripciones se realizan en Adscripción hasta el miércoles 12 de agosto.

    ¡Esperamos una gran participación!',
    'general', '2026-07-30'),
    (11, 'Fiesta de la Tradición',
    'La Escuela Técnica Dionisio Díaz invita a toda la comunidad a participar de la Fiesta de la Tradición, que se realizará el jueves 15 de octubre.

    Será una jornada para celebrar nuestras costumbres y compartir diferentes expresiones de la cultura nacional.

    ¡Los esperamos para disfrutar de esta celebración!',
    'general', '2026-10-05'),
    (12, '¡Noche de Halloween en la escuela!',
    '¡Prepará tu disfraz!

    El viernes 30 de octubre celebraremos Halloween en la escuela.

    Habrá música, actividades recreativas y un concurso de disfraces con premios para las propuestas más originales.

    Invitamos a toda la comunidad educativa a sumarse y disfrutar de una tarde diferente.

    ¡No te lo pierdas!',
    'general', '2026-10-28'),
    (13, 'Feria gastronómica institucional',
    'Se invita a toda la comunidad educativa a participar de nuestra Feria Gastronómica.

    Los estudiantes presentarán distintas preparaciones y propuestas relacionadas con su formación.

    La actividad se realizará en las instalaciones de la escuela. ¡Los esperamos!',
    'general', '2026-10-12'),
    (14, 'Venta de porotos a beneficio de la institución',
    'La escuela realizará una venta de porotos con el objetivo de recaudar fondos para colaborar con las actividades y necesidades de la institución.

    Quienes deseen colaborar podrán realizar sus pedidos en Adscripción.

    ¡Agradecemos el apoyo de toda la comunidad!',
    'general', '2026-08-03'),
    (15, 'Canastas a beneficio de la escuela',
    '¡Colaborá con nuestra institución!

    Se encuentran a la venta canastas con diferentes productos a beneficio de la Escuela Técnica Dionisio Díaz.

    Para adquirir una o consultar los detalles, dirigirse a Adscripción.

    Cada colaboración es importante. ¡Muchas gracias!',
    'general', '2026-09-14'),
    (16, 'Cambio de fecha: Noche de la Nostalgia',
    'Se comunica a la comunidad educativa que la Noche de la Nostalgia deberá ser reprogramada debido a las crecientes del río Olimar y del arroyo Yerbal, que afectan las condiciones de acceso y circulación en la zona.

    La decisión se toma priorizando la seguridad de todos los participantes.

    La nueva fecha del evento será comunicada próximamente.

    Agradecemos la comprensión.',
    'general', '2026-08-21'),
    (17, '2.ª edición de Miss y Mister UTU',
    '¡Se viene una nueva edición de Miss y Mister UTU!

    La actividad contará con participación de estudiantes, servicio gastronómico a cargo de alumnos de la institución, coronación y entrega de premios.

    Entrada: $100.

    Invitamos a toda la comunidad educativa a acompañar esta propuesta y disfrutar de una noche especial.

    ¡Los esperamos!',
    'general', '2026-09-01'),
    (18, 'Cena show institucional',
    'La Escuela Técnica Dionisio Díaz invita a toda la comunidad a participar de su Cena Show.

    Será una noche para compartir, disfrutar de diferentes espectáculos y acompañar las actividades de nuestra institución.

    Fecha: viernes 13 de noviembre.
    Costo de la tarjeta: $800.

    Por reservas y consultas, dirigirse a Adscripción.

    ¡Contamos con su presencia!',
    'general', '2026-11-07'),
    (19, 'Suspensión del Show de Talentos',
    'Se comunica a los estudiantes que el Show de Talentos previsto para el viernes 14 de agosto queda suspendido.

    Agradecemos a quienes se inscribieron y a todos los que colaboraron con la organización.

    Próximamente se informará si se establece una nueva fecha.',
    'restringido', '2026-08-13'),
    (20, 'Retorno de la profesora Paula González',
    'Se informa a los estudiantes de 2 DA que el lunes 17 de agosto la profesora Paula González retomará sus clases en el horario habitual.

    Las actividades se desarrollarán con normalidad.',
    '2 DA', '2026-08-14'),
    (21, 'Inasistencia docente - 1 BP',
    'Se comunica a los estudiantes de 1 BP que mañana no concurrirá la profesora Sofía Morales.

    Por este motivo, no se dictarán las clases correspondientes a las asignaturas de Técnicas de Cocina y Repostería a su cargo.',
    '1 BP', '2026-08-13'),
    (22, 'Inscripciones para actividades de la Feria Tecnológica',
    'Se convoca a los estudiantes interesados en participar de la próxima Feria Tecnológica de la institución.

    Quienes tengan propuestas, proyectos o quieran colaborar con la organización deberán anotarse en Adscripción antes del viernes 28 de agosto.

    ¡Los invitamos a participar!',
    'restringido', '2026-08-20'),
    (23, 'Entrega de boletines',
    'Se informa a los estudiantes que la entrega de boletines correspondientes al período se realizará el viernes 4 de septiembre.

    Se solicita consultar en Adscripción los horarios correspondientes a cada grupo.',
    'restringido', '2026-09-01'),
    (24, 'Convocatoria a estudiantes colaboradores',
    'Se necesitan estudiantes voluntarios para colaborar con la organización de las próximas actividades institucionales.

    Las tareas incluirán preparación de espacios, organización de materiales y apoyo durante las jornadas.

    Los interesados pueden anotarse en Adscripción.',
    'restringido', '2026-09-08'),
    (25, 'Recordatorio: inscripción a la Feria Gastronómica',
    'Se recuerda a los estudiantes de Gastronomía que se encuentran abiertas las inscripciones para participar en la próxima Feria Gastronómica.

    Quienes deseen presentar elaboraciones deberán comunicarlo a sus docentes y coordinar su participación.

    ¡Anímense a participar!',
    'restringido', '2026-10-05'),
    (26, 'Reunión de delegados estudiantiles',
    'Se convoca a los delegados de todos los grupos a una reunión de coordinación.

    Se tratarán temas relacionados con las actividades institucionales y las propuestas de los estudiantes.

    Fecha: jueves 17 de septiembre.
    Hora: 17:00.
    Lugar: salón de reuniones.

    Se solicita puntualidad.',
    'restringido', '2026-09-14'),
    (27, 'Inscripciones para la Cena Show',
    'Se encuentran abiertas las reservas para la Cena Show institucional del viernes 13 de noviembre.

    Costo de la tarjeta: $800.

    Los estudiantes interesados podrán realizar sus reservas en Adscripción.

    Los cupos son limitados.',
    'restringido', '2026-11-02'),
    (28, 'Preparativos para la Fiesta de la Tradición',
    'Se invita a los estudiantes interesados a colaborar con la preparación de la Fiesta de la Tradición.

    Se necesitan participantes para las actividades culturales, decoración y organización general.

    Quienes deseen colaborar pueden anotarse en Adscripción.',
    'restringido', '2026-10-08'),
    (29, 'Recordatorio de actividades prácticas',
    'Se recuerda a los estudiantes que esta semana se realizarán actividades prácticas correspondientes a la asignatura Procesos de Producción Agropecuaria.

    Se solicita concurrir con los materiales indicados por la docente.',
    '2 MB', '2026-07-06'),
    (30, 'Materiales para prácticas de producción',
    'Para las próximas actividades de Práctica de Producción Vegetal, se solicita a los estudiantes consultar con la docente los materiales necesarios y concurrir preparados para trabajar en las actividades previstas.',
    '2 MB', '2026-09-07'),
    (31, 'Entrega de trabajos de Programación',
    'Se recuerda a los estudiantes que deberán entregar las actividades pendientes de Programación antes del viernes 10 de julio.

    Las entregas deberán realizarse por el medio indicado por el docente.',
    '2 MC', '2026-07-06'),
    (32, 'Actividad de Bases de Datos',
    'Durante esta semana se continuará trabajando con los ejercicios prácticos de Bases de Datos.

    Se recomienda revisar los contenidos vistos en clase y llevar las actividades anteriores para continuar con el trabajo.',
    '2 MC', '2026-08-17'),
    (33, 'Evaluación de Matemáticas',
    'Se comunica a los estudiantes que el próximo miércoles 22 de julio se realizará una evaluación de Matemáticas.

    Los contenidos incluidos serán los trabajados durante las últimas clases.

    Se recomienda repasar los ejercicios y materiales proporcionados por la docente Ana Pereira.',
    '3 MC', '2026-07-15'),
    (34, 'Entrega de proyecto de Ingeniería de Software',
    'Se recuerda a los estudiantes que el viernes 18 de septiembre será la fecha límite para entregar el avance del proyecto correspondiente a Ingeniería de Software.

    Se solicita respetar las pautas establecidas por el docente.',
    '3 MC', '2026-09-10'),
    (35, 'Actividad de Contabilidad',
    'Se informa a los estudiantes que deberán presentar los ejercicios pendientes de Contabilidad durante la próxima clase.

    Se recomienda revisar los temas trabajados y consultar las dudas con el docente.',
    '1 MA', '2026-07-13'),
    (36, 'Entrega de trabajos de Administración',
    'Se recuerda que el lunes 14 de septiembre se realizará la entrega de los trabajos correspondientes a la asignatura Administración.

    Los estudiantes deberán presentar las actividades solicitadas por la docente.',
    '1 MA', '2026-09-08'),
    (37, 'Inasistencia: Paula González',
    'Se comunica a los estudiantes de 2 DA que mañana no concurrirá la profesora Paula González.

    Las actividades correspondientes a sus asignaturas se retomarán según el horario habitual cuando se reintegre.',
    '2 DA', '2026-08-14'),
    (38, 'Materiales para Estética Facial',
    'Se solicita a los estudiantes de 2 DA concurrir a la próxima clase de Estética Facial con los materiales indicados por la docente.

    Se recuerda la importancia de contar con los elementos necesarios para desarrollar las actividades prácticas.',
    '2 DA', '2026-09-02'),
    (39, 'Inasistencia: Sofía Morales',
    'Se comunica a los estudiantes de 1 BP que mañana no concurrirá la profesora Sofía Morales.

    No se dictarán las clases de Técnicas de Cocina y Repostería correspondientes a su horario.',
    '1 BP', '2026-08-13'),
    (40, 'Actividad práctica de Bromatología',
    'Se recuerda a los estudiantes de 1 BP que durante la próxima clase de Bromatología se realizará una actividad práctica.

    Se solicita concurrir con el material de estudio y las indicaciones trabajadas anteriormente.',
    '1 BP', '2026-09-03'),
    (41, 'Evaluación de Electrotecnia',
    'Se informa a los estudiantes de 1 EM que el próximo martes 21 de julio se realizará una evaluación de Electrotecnia.

    Se evaluarán los contenidos desarrollados durante las últimas clases.',
    '1 EM', '2026-07-14'),
    (42, 'Actividad de Mantenimiento Industrial',
    'Se recuerda a los estudiantes que durante esta semana se desarrollarán actividades prácticas de Mantenimiento Industrial.

    Se solicita respetar las indicaciones de seguridad y las orientaciones del docente.',
    '1 EM', '2026-09-15'),
    (43, 'Materiales para Instalaciones Eléctricas',
    'Se solicita a los estudiantes de 2 DB llevar los materiales indicados por el docente para las próximas actividades prácticas de Instalaciones Eléctricas.',
    '2 DB', '2026-07-20'),
    (44, 'Evaluación de Mediciones Eléctricas',
    'Se comunica que el próximo jueves 10 de septiembre se realizará una evaluación de Mediciones Eléctricas.

    Se recomienda repasar los procedimientos y ejercicios desarrollados en clase.',
    '2 DB', '2026-09-03'),
    (45, 'Actividad de Tecnología de la Madera',
    'Se recuerda a los estudiantes de 1 CA que durante esta semana se realizarán actividades prácticas de Tecnología de la Madera.

    Se solicita concurrir con los materiales y elementos de trabajo indicados por el docente.',
    '1 CA', '2026-07-08'),
    (46, 'Entrega de trabajos de Diseño y Construcción de Mobiliario',
    'Se informa a los estudiantes que el viernes 11 de septiembre deberán presentar los avances de los trabajos correspondientes a Diseño y Construcción de Mobiliario.',
    '1 CA', '2026-09-04'),
    (47, 'Evaluación de Logística',
    'Se comunica a los estudiantes de 3 CL que el próximo miércoles 29 de julio se realizará una evaluación de Logística.

    Se incluirán los contenidos trabajados durante las últimas clases.',
    '3 CL', '2026-07-21'),
    (48, 'Entrega de actividades de Contabilidad',
    'Se recuerda a los estudiantes de 3 CL que deberán entregar las actividades pendientes de Contabilidad el próximo martes 15 de septiembre.

    Se solicita cumplir con la fecha establecida.',
    '3 CL', '2026-09-08');

INSERT INTO avisos (identificador) VALUES
    (1),
    (2),
    (3),
    (5),
    (6),
    (8),
    (9),
    (10),
    (13),
    (14),
    (15),
    (16),
    (17),
    (19),
    (20),
    (21),
    (22),
    (24),
    (25),
    (27),
    (28),
    (29),
    (30),
    (32),
    (35),
    (37),
    (38),
    (39),
    (40),
    (42),
    (43),
    (45);

INSERT INTO eventos (identificador, hora_inicio, hora_fin, fecha_inicio, fecha_fin) VALUES
    (4, '10:10:00', NULL, '2026-06-19', '2026-06-19'),
    (7, '15:00:00', NULL, '2026-07-07', '2026-07-07'),
    (11, NULL, NULL, '2026-10-15', '2026-10-15'),
    (12, NULL, NULL, '2026-10-30', '2026-10-30'),
    (18, NULL, NULL, '2026-11-13', '2026-11-13'),
    (23, NULL, NULL, '2026-09-04', '2026-09-04'),
    (26, '17:00:00', NULL, '2026-09-17', '2026-09-17'),
    (31, NULL, NULL, '2026-07-10', '2026-07-10'),
    (33, NULL, NULL, '2026-07-22', '2026-07-22'),
    (34, NULL, NULL, '2026-09-18', '2026-09-18'),
    (36, NULL, NULL, '2026-09-14', '2026-09-14'),
    (41, NULL, NULL, '2026-07-21', '2026-07-21'),
    (44, NULL, NULL, '2026-09-10', '2026-09-10'),
    (46, NULL, NULL, '2026-09-11', '2026-09-11'),
    (47, NULL, NULL, '2026-07-29', '2026-07-29'),
    (48, NULL, NULL, '2026-09-15', '2026-09-15');


    INSERT INTO administrativo_notificacion (correo_administrativo, identificador_notificacion) VALUES
    ('facundo.sosa@correo.com', 1),
    ('gabriela.mendez@correo.com', 2),
    ('hector.nunez@correo.com', 3),
    ('ines.castro@correo.com', 4),
    ('juan.romero@correo.com', 5),
    ('facundo.sosa@correo.com', 6),
    ('gabriela.mendez@correo.com', 7),
    ('hector.nunez@correo.com', 8),
    ('ines.castro@correo.com', 9),
    ('juan.romero@correo.com', 10),
    ('facundo.sosa@correo.com', 11),
    ('gabriela.mendez@correo.com', 12),
    ('hector.nunez@correo.com', 13),
    ('ines.castro@correo.com', 14),
    ('juan.romero@correo.com', 15),
    ('facundo.sosa@correo.com', 16),
    ('gabriela.mendez@correo.com', 17),
    ('hector.nunez@correo.com', 18),
    ('ines.castro@correo.com', 19),
    ('juan.romero@correo.com', 20),
    ('facundo.sosa@correo.com', 21),
    ('gabriela.mendez@correo.com', 22),
    ('hector.nunez@correo.com', 23),
    ('ines.castro@correo.com', 24),
    ('juan.romero@correo.com', 25),
    ('facundo.sosa@correo.com', 26),
    ('gabriela.mendez@correo.com', 27),
    ('hector.nunez@correo.com', 28),
    ('ines.castro@correo.com', 29),
    ('juan.romero@correo.com', 30),
    ('facundo.sosa@correo.com', 31),
    ('gabriela.mendez@correo.com', 32),
    ('hector.nunez@correo.com', 33),
    ('ines.castro@correo.com', 34),
    ('juan.romero@correo.com', 35),
    ('facundo.sosa@correo.com', 36),
    ('gabriela.mendez@correo.com', 37),
    ('hector.nunez@correo.com', 38),
    ('ines.castro@correo.com', 39),
    ('juan.romero@correo.com', 40),
    ('facundo.sosa@correo.com', 41),
    ('gabriela.mendez@correo.com', 42),
    ('hector.nunez@correo.com', 43),
    ('ines.castro@correo.com', 44),
    ('juan.romero@correo.com', 45),
    ('facundo.sosa@correo.com', 46),
    ('gabriela.mendez@correo.com', 47),
    ('hector.nunez@correo.com', 48);


INSERT INTO grupo_materia
(nombre_grupo, nombre_materia, correo_docente) VALUES
    ('1 BP', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('1 BP', 'Nutrición', 'agustina.silva21@correo.com'),
    ('1 BP', 'Panadería', 'sofía.morales19@correo.com'),
    ('1 BP', 'Química', 'martín.suárez04@correo.com'),
    ('1 BP', 'Repostería', 'juan.pintos20@correo.com'),
    ('1 BP', 'Servicios Gastronómicos', 'agustina.silva21@correo.com'),
    ('1 BP', 'Técnicas de Cocina', 'sofía.morales19@correo.com'),
    ('1 CA', 'Acabados en Madera', 'milagros.vázquez35@correo.com'),
    ('1 CA', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('1 CA', 'Dibujo Técnico', 'facundo.lemos28@correo.com'),
    ('1 CA', 'Diseño Asistido por Computadora', 'milagros.vázquez35@correo.com'),
    ('1 CA', 'Diseño y Construcción de Mobiliario', 'clara.pereira33@correo.com'),
    ('1 CA', 'Inglés', 'diego.silveira02@correo.com'),
    ('1 CA', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('1 CA', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('1 CA', 'Máquinas y Herramientas', 'leandro.méndez34@correo.com'),
    ('1 CA', 'Procesos de Carpintería', 'leandro.méndez34@correo.com'),
    ('1 CA', 'Tecnología de la Madera', 'clara.pereira33@correo.com'),
    ('1 EM', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('1 EM', 'Dibujo Técnico', 'facundo.lemos28@correo.com'),
    ('1 EM', 'Electrotecnia', 'ignacio.paz26@correo.com'),
    ('1 EM', 'Física', 'ana.pereira01@correo.com'),
    ('1 EM', 'Inglés', 'diego.silveira02@correo.com'),
    ('1 EM', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('1 EM', 'Mantenimiento Industrial', 'belén.ríos27@correo.com'),
    ('1 EM', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('1 EM', 'Mecánica Aplicada', 'facundo.lemos28@correo.com'),
    ('1 EM', 'Química', 'martín.suárez04@correo.com'),
    ('1 EM', 'Sistemas Electromecánicos', 'belén.ríos27@correo.com'),
    ('1 EM', 'Tecnología Mecánica', 'ignacio.paz26@correo.com'),
    ('1 MA', 'Administración', 'mariana.techera11@correo.com'),
    ('1 MA', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('1 MA', 'Comercio', 'carolina.viera13@correo.com'),
    ('1 MA', 'Contabilidad', 'gabriel.olivera10@correo.com'),
    ('1 MA', 'Derecho', 'andrés.pérez12@correo.com'),
    ('1 MA', 'Educación Financiera', 'gabriel.olivera10@correo.com'),
    ('1 MA', 'Filosofía', 'lucía.fernández03@correo.com'),
    ('1 MA', 'Gestión Empresarial', 'santiago.lópez14@correo.com'),
    ('1 MA', 'Inglés', 'diego.silveira02@correo.com'),
    ('1 MA', 'Introducción a la Organización y su Gestión', 'mariana.techera11@correo.com'),
    ('1 MA', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('1 MA', 'Marketing', 'santiago.lópez14@correo.com'),
    ('1 MA', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('2 DA', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('2 DA', 'Cosmetología', 'paula.gonzález15@correo.com'),
    ('2 DA', 'Estética Corporal', 'bruno.ramos16@correo.com'),
    ('2 DA', 'Estética Facial', 'paula.gonzález15@correo.com'),
    ('2 DA', 'Filosofía', 'lucía.fernández03@correo.com'),
    ('2 DA', 'Gestión de Servicios de Belleza', 'rodrigo.cabrera18@correo.com'),
    ('2 DA', 'Inglés', 'diego.silveira02@correo.com'),
    ('2 DA', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('2 DA', 'Manicuría', 'micaela.díaz17@correo.com'),
    ('2 DA', 'Maquillaje Profesional', 'bruno.ramos16@correo.com'),
    ('2 DA', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('2 DA', 'Peluquería', 'micaela.díaz17@correo.com'),
    ('2 DB', 'Automatismos Eléctricos', 'julieta.sosa31@correo.com'),
    ('2 DB', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('2 DB', 'Dibujo Técnico', 'facundo.lemos28@correo.com'),
    ('2 DB', 'Electrotecnia', 'ignacio.paz26@correo.com'),
    ('2 DB', 'Electrónica Aplicada', 'mateo.giménez32@correo.com'),
    ('2 DB', 'Física', 'ana.pereira01@correo.com'),
    ('2 DB', 'Inglés', 'diego.silveira02@correo.com'),
    ('2 DB', 'Instalaciones Eléctricas', 'victoria.méndez29@correo.com'),
    ('2 DB', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('2 DB', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('2 DB', 'Mediciones Eléctricas', 'sebastián.núñez30@correo.com'),
    ('2 DB', 'Máquinas Eléctricas', 'sebastián.núñez30@correo.com'),
    ('2 DB', 'Seguridad Eléctrica', 'julieta.sosa31@correo.com'),
    ('2 MB', 'Agroecología', 'romina.fagúndez25@correo.com'),
    ('2 MB', 'Biología Aplicada a la Agrotecnología', 'emiliano.mora22@correo.com'),
    ('2 MB', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('2 MB', 'Filosofía', 'lucía.fernández03@correo.com'),
    ('2 MB', 'Inglés', 'diego.silveira02@correo.com'),
    ('2 MB', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('2 MB', 'Maquinaria Agrícola', 'romina.fagúndez25@correo.com'),
    ('2 MB', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('2 MB', 'Procesos de Producción Agropecuaria', 'natalia.correa23@correo.com'),
    ('2 MB', 'Producción Agraria', 'pablo.acosta24@correo.com'),
    ('2 MB', 'Práctica de Producción Animal', 'pablo.acosta24@correo.com'),
    ('2 MB', 'Práctica de Producción Vegetal', 'natalia.correa23@correo.com'),
    ('2 MC', 'Bases de Datos', 'federico.méndez06@correo.com'),
    ('2 MC', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('2 MC', 'Filosofía', 'lucía.fernández03@correo.com'),
    ('2 MC', 'Ingeniería de Software', 'nicolás.acosta08@correo.com'),
    ('2 MC', 'Inglés', 'diego.silveira02@correo.com'),
    ('2 MC', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('2 MC', 'Lógica y Métodos Discretos', 'florencia.castro09@correo.com'),
    ('2 MC', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('2 MC', 'Programación', 'federico.méndez06@correo.com'),
    ('2 MC', 'Redes Informáticas', 'camila.sosa07@correo.com'),
    ('2 MC', 'Sistemas Operativos', 'camila.sosa07@correo.com'),
    ('2 MC', 'Soporte IT', 'nicolás.acosta08@correo.com'),
    ('3 CL', 'Administración', 'mariana.techera11@correo.com'),
    ('3 CL', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('3 CL', 'Comercio', 'carolina.viera13@correo.com'),
    ('3 CL', 'Computación Aplicada', 'florencia.castro09@correo.com'),
    ('3 CL', 'Contabilidad', 'gabriel.olivera10@correo.com'),
    ('3 CL', 'Derecho', 'andrés.pérez12@correo.com'),
    ('3 CL', 'Educación Financiera', 'gabriel.olivera10@correo.com'),
    ('3 CL', 'Gestión Empresarial', 'santiago.lópez14@correo.com'),
    ('3 CL', 'Historia económica', 'valentina.rodríguez05@correo.com'),
    ('3 CL', 'Inglés', 'diego.silveira02@correo.com'),
    ('3 CL', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('3 CL', 'Logística', 'carolina.viera13@correo.com'),
    ('3 CL', 'Marketing', 'santiago.lópez14@correo.com'),
    ('3 CL', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('3 MC', 'Bases de Datos', 'federico.méndez06@correo.com'),
    ('3 MC', 'Ciudadanía y Sociedad', 'lucía.fernández03@correo.com'),
    ('3 MC', 'Filosofía', 'lucía.fernández03@correo.com'),
    ('3 MC', 'Ingeniería de Software', 'nicolás.acosta08@correo.com'),
    ('3 MC', 'Inglés', 'diego.silveira02@correo.com'),
    ('3 MC', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('3 MC', 'Lógica y Métodos Discretos', 'florencia.castro09@correo.com'),
    ('3 MC', 'Matemáticas', 'ana.pereira01@correo.com'),
    ('3 MC', 'Programación', 'federico.méndez06@correo.com'),
    ('3 MC', 'Redes Informáticas', 'camila.sosa07@correo.com'),
    ('3 MC', 'Sistemas Operativos', 'camila.sosa07@correo.com'),
    ('3 MC', 'Soporte IT', 'nicolás.acosta08@correo.com'),
    ('1 BP', 'Inglés', 'diego.silveira02@correo.com'),
    ('1 BP', 'Bromatología', 'agustina.silva21@correo.com'),
    ('1 BP', 'Lengua y Comunicación', 'diego.silveira02@correo.com'),
    ('1 BP', 'Enología', 'sofía.morales19@correo.com'),
    ('1 BP', 'Biología', 'emiliano.mora22@correo.com');

INSERT INTO clases (hora_inicio, hora_fin, nombre_dia, nombre_grupo, nombre_materia) VALUES
    ('12:10','13:45','Lunes','2 MC','Programación'),
    ('13:45','15:25','Lunes','2 MC','Matemáticas'),
    ('15:25','16:10','Lunes','2 MC','Inglés'),
    ('16:20','17:50','Lunes','2 MC','Bases de Datos'),
    ('17:55','18:40','Lunes','2 MC','Lengua y Comunicación'),
    ('12:10','13:45','Martes','2 MC','Redes Informáticas'),
    ('13:45','15:25','Martes','2 MC','Sistemas Operativos'),
    ('15:25','16:10','Martes','2 MC','Programación'),
    ('16:20','17:50','Martes','2 MC','Lógica y Métodos Discretos'),
    ('17:55','18:40','Martes','2 MC','Soporte IT'),
    ('12:10','13:45','Miércoles','2 MC','Bases de Datos'),
    ('13:45','15:25','Miércoles','2 MC','Matemáticas'),
    ('15:25','16:10','Miércoles','2 MC','Inglés'),
    ('16:20','17:50','Miércoles','2 MC','Redes Informáticas'),
    ('17:55','18:40','Miércoles','2 MC','Ciudadanía y Sociedad'),
    ('12:10','13:45','Jueves','2 MC','Sistemas Operativos'),
    ('13:45','15:25','Jueves','2 MC','Programación'),
    ('15:25','16:10','Jueves','2 MC','Soporte IT'),
    ('16:20','17:50','Jueves','2 MC','Bases de Datos'),
    ('17:55','18:40','Jueves','2 MC','Filosofía'),
    ('12:10','13:45','Viernes','2 MC','Ingeniería de Software'),
    ('13:45','15:25','Viernes','2 MC','Lógica y Métodos Discretos'),
    ('15:25','16:10','Viernes','2 MC','Inglés'),
    ('16:20','17:50','Viernes','2 MC','Programación'),
    ('17:55','18:40','Viernes','2 MC','Redes Informáticas'),
    ('17:20','18:50','Lunes','3 MC','Ingeniería de Software'),
    ('19:00','20:30','Lunes','3 MC','Matemáticas'),
    ('20:40','22:10','Lunes','3 MC','Bases de Datos'),
    ('22:20','23:50','Lunes','3 MC','Inglés'),
    ('17:20','18:50','Martes','3 MC','Programación'),
    ('19:00','20:30','Martes','3 MC','Redes Informáticas'),
    ('20:40','22:10','Martes','3 MC','Sistemas Operativos'),
    ('22:20','23:50','Martes','3 MC','Lengua y Comunicación'),
    ('17:20','18:50','Miércoles','3 MC','Soporte IT'),
    ('19:00','20:30','Miércoles','3 MC','Matemáticas'),
    ('20:40','22:10','Miércoles','3 MC','Ingeniería de Software'),
    ('22:20','23:50','Miércoles','3 MC','Lógica y Métodos Discretos'),
    ('17:20','18:50','Jueves','3 MC','Bases de Datos'),
    ('19:00','20:30','Jueves','3 MC','Programación'),
    ('20:40','22:10','Jueves','3 MC','Inglés'),
    ('22:20','23:50','Jueves','3 MC','Ciudadanía y Sociedad'),
    ('17:20','18:50','Viernes','3 MC','Redes Informáticas'),
    ('19:00','20:30','Viernes','3 MC','Sistemas Operativos'),
    ('20:40','22:10','Viernes','3 MC','Programación'),
    ('22:20','23:50','Viernes','3 MC','Filosofía'),
    ('12:10','13:45','Lunes','1 MA','Introducción a la Organización y su Gestión'),
    ('13:45','15:25','Lunes','1 MA','Matemáticas'),
    ('15:25','16:10','Lunes','1 MA','Inglés'),
    ('16:20','17:50','Lunes','1 MA','Administración'),
    ('17:55','18:40','Lunes','1 MA','Lengua y Comunicación'),
    ('12:10','13:45','Martes','1 MA','Contabilidad'),
    ('13:45','15:25','Martes','1 MA','Derecho'),
    ('15:25','16:10','Martes','1 MA','Educación Financiera'),
    ('16:20','17:50','Martes','1 MA','Gestión Empresarial'),
    ('17:55','18:40','Martes','1 MA','Matemáticas'),
    ('12:10','13:45','Miércoles','1 MA','Administración'),
    ('13:45','15:25','Miércoles','1 MA','Inglés'),
    ('15:25','16:10','Miércoles','1 MA','Marketing'),
    ('16:20','17:50','Miércoles','1 MA','Contabilidad'),
    ('17:55','18:40','Miércoles','1 MA','Ciudadanía y Sociedad'),
    ('12:10','13:45','Jueves','1 MA','Introducción a la Organización y su Gestión'),
    ('13:45','15:25','Jueves','1 MA','Educación Financiera'),
    ('15:25','16:10','Jueves','1 MA','Administración'),
    ('16:20','17:50','Jueves','1 MA','Derecho'),
    ('17:55','18:40','Jueves','1 MA','Filosofía'),
    ('12:10','13:45','Viernes','1 MA','Gestión Empresarial'),
    ('13:45','15:25','Viernes','1 MA','Matemáticas'),
    ('15:25','16:10','Viernes','1 MA','Comercio'),
    ('16:20','17:50','Viernes','1 MA','Contabilidad'),
    ('17:55','18:40','Viernes','1 MA','Inglés'),
    ('12:10','13:45','Lunes','2 DA','Cosmetología'),
    ('13:45','15:25','Lunes','2 DA','Matemáticas'),
    ('15:25','16:10','Lunes','2 DA','Inglés'),
    ('16:20','17:50','Lunes','2 DA','Estética Facial'),
    ('17:55','18:40','Lunes','2 DA','Lengua y Comunicación'),
    ('12:10','13:45','Martes','2 DA','Peluquería'),
    ('13:45','15:25','Martes','2 DA','Manicuría'),
    ('15:25','16:10','Martes','2 DA','Gestión de Servicios de Belleza'),
    ('16:20','17:50','Martes','2 DA','Estética Corporal'),
    ('17:55','18:40','Martes','2 DA','Matemáticas'),
    ('12:10','13:45','Miércoles','2 DA','Maquillaje Profesional'),
    ('13:45','15:25','Miércoles','2 DA','Inglés'),
    ('15:25','16:10','Miércoles','2 DA','Cosmetología'),
    ('16:20','17:50','Miércoles','2 DA','Estética Facial'),
    ('17:55','18:40','Miércoles','2 DA','Ciudadanía y Sociedad'),
    ('12:10','13:45','Jueves','2 DA','Estética Corporal'),
    ('13:45','15:25','Jueves','2 DA','Peluquería'),
    ('15:25','16:10','Jueves','2 DA','Manicuría'),
    ('16:20','17:50','Jueves','2 DA','Gestión de Servicios de Belleza'),
    ('17:55','18:40','Jueves','2 DA','Filosofía'),
    ('12:10','13:45','Viernes','2 DA','Cosmetología'),
    ('13:45','15:25','Viernes','2 DA','Matemáticas'),
    ('15:25','16:10','Viernes','2 DA','Maquillaje Profesional'),
    ('16:20','17:50','Viernes','2 DA','Estética Facial'),
    ('17:55','18:40','Viernes','2 DA','Inglés'),
    ('08:00','09:30','Lunes','1 BP','Técnicas de Cocina'),
    ('09:45','11:15','Lunes','1 BP','Matemáticas'),
    ('11:30','13:00','Lunes','1 BP','Inglés'),
    ('08:00','09:30','Martes','1 BP','Panadería'),
    ('09:45','11:15','Martes','1 BP','Bromatología'),
    ('11:30','13:00','Martes','1 BP','Lengua y Comunicación'),
    ('08:00','09:30','Miércoles','1 BP','Repostería'),
    ('09:45','11:15','Miércoles','1 BP','Nutrición'),
    ('11:30','13:00','Miércoles','1 BP','Matemáticas'),
    ('08:00','09:30','Jueves','1 BP','Servicios Gastronómicos'),
    ('09:45','11:15','Jueves','1 BP','Técnicas de Cocina'),
    ('11:30','13:00','Jueves','1 BP','Inglés'),
    ('08:00','09:30','Viernes','1 BP','Enología'),
    ('09:45','11:15','Viernes','1 BP','Química'),
    ('11:30','13:00','Viernes','1 BP','Biología'),
    ('12:10','13:45','Lunes','2 MB','Procesos de Producción Agropecuaria'),
    ('13:45','15:25','Lunes','2 MB','Matemáticas'),
    ('15:25','16:10','Lunes','2 MB','Inglés'),
    ('16:20','17:50','Lunes','2 MB','Práctica de Producción Vegetal'),
    ('17:55','18:40','Lunes','2 MB','Lengua y Comunicación'),
    ('12:10','13:45','Martes','2 MB','Práctica de Producción Animal'),
    ('13:45','15:25','Martes','2 MB','Biología Aplicada a la Agrotecnología'),
    ('15:25','16:10','Martes','2 MB','Producción Agraria'),
    ('16:20','17:50','Martes','2 MB','Agroecología'),
    ('17:55','18:40','Martes','2 MB','Matemáticas'),
    ('12:10','13:45','Miércoles','2 MB','Maquinaria Agrícola'),
    ('13:45','15:25','Miércoles','2 MB','Inglés'),
    ('15:25','16:10','Miércoles','2 MB','Procesos de Producción Agropecuaria'),
    ('16:20','17:50','Miércoles','2 MB','Práctica de Producción Vegetal'),
    ('17:55','18:40','Miércoles','2 MB','Ciudadanía y Sociedad'),
    ('12:10','13:45','Jueves','2 MB','Producción Agraria'),
    ('13:45','15:25','Jueves','2 MB','Práctica de Producción Animal'),
    ('15:25','16:10','Jueves','2 MB','Agroecología'),
    ('16:20','17:50','Jueves','2 MB','Biología Aplicada a la Agrotecnología'),
    ('17:55','18:40','Jueves','2 MB','Filosofía'),
    ('12:10','13:45','Viernes','2 MB','Maquinaria Agrícola'),
    ('13:45','15:25','Viernes','2 MB','Matemáticas'),
    ('15:25','16:10','Viernes','2 MB','Procesos de Producción Agropecuaria'),
    ('16:20','17:50','Viernes','2 MB','Producción Agraria'),
    ('17:55','18:40','Viernes','2 MB','Inglés'),
    ('08:00','09:30','Lunes','1 EM','Tecnología Mecánica'),
    ('09:45','11:15','Lunes','1 EM','Matemáticas'),
    ('11:30','13:00','Lunes','1 EM','Inglés'),
    ('08:00','09:30','Martes','1 EM','Electrotecnia'),
    ('09:45','11:15','Martes','1 EM','Dibujo Técnico'),
    ('11:30','13:00','Martes','1 EM','Lengua y Comunicación'),
    ('08:00','09:30','Miércoles','1 EM','Sistemas Electromecánicos'),
    ('09:45','11:15','Miércoles','1 EM','Física'),
    ('11:30','13:00','Miércoles','1 EM','Matemáticas'),
    ('08:00','09:30','Jueves','1 EM','Mantenimiento Industrial'),
    ('09:45','11:15','Jueves','1 EM','Tecnología Mecánica'),
    ('11:30','13:00','Jueves','1 EM','Inglés'),
    ('08:00','09:30','Viernes','1 EM','Mecánica Aplicada'),
    ('09:45','11:15','Viernes','1 EM','Química'),
    ('11:30','13:00','Viernes','1 EM','Ciudadanía y Sociedad'),
    ('08:00','09:30','Lunes','2 DB','Instalaciones Eléctricas'),
    ('09:45','11:15','Lunes','2 DB','Matemáticas'),
    ('11:30','13:00','Lunes','2 DB','Inglés'),
    ('08:00','09:30','Martes','2 DB','Electrotecnia'),
    ('09:45','11:15','Martes','2 DB','Mediciones Eléctricas'),
    ('11:30','13:00','Martes','2 DB','Lengua y Comunicación'),
    ('08:00','09:30','Miércoles','2 DB','Máquinas Eléctricas'),
    ('09:45','11:15','Miércoles','2 DB','Física'),
    ('11:30','13:00','Miércoles','2 DB','Matemáticas'),
    ('08:00','09:30','Jueves','2 DB','Seguridad Eléctrica'),
    ('09:45','11:15','Jueves','2 DB','Automatismos Eléctricos'),
    ('11:30','13:00','Jueves','2 DB','Inglés'),
    ('08:00','09:30','Viernes','2 DB','Electrónica Aplicada'),
    ('09:45','11:15','Viernes','2 DB','Dibujo Técnico'),
    ('11:30','13:00','Viernes','2 DB','Ciudadanía y Sociedad'),
    ('08:00','09:30','Lunes','1 CA','Tecnología de la Madera'),
    ('09:45','11:15','Lunes','1 CA','Matemáticas'),
    ('11:30','13:00','Lunes','1 CA','Inglés'),
    ('08:00','09:30','Martes','1 CA','Procesos de Carpintería'),
    ('09:45','11:15','Martes','1 CA','Máquinas y Herramientas'),
    ('11:30','13:00','Martes','1 CA','Lengua y Comunicación'),
    ('08:00','09:30','Miércoles','1 CA','Diseño y Construcción de Mobiliario'),
    ('09:45','11:15','Miércoles','1 CA','Dibujo Técnico'),
    ('11:30','13:00','Miércoles','1 CA','Matemáticas'),
    ('08:00','09:30','Jueves','1 CA','Acabados en Madera'),
    ('09:45','11:15','Jueves','1 CA','Tecnología de la Madera'),
    ('11:30','13:00','Jueves','1 CA','Inglés'),
    ('08:00','09:30','Viernes','1 CA','Diseño Asistido por Computadora'),
    ('09:45','11:15','Viernes','1 CA','Procesos de Carpintería'),
    ('11:30','13:00','Viernes','1 CA','Ciudadanía y Sociedad'),
    ('17:20','18:50','Lunes','3 CL','Logística'),
    ('19:00','20:30','Lunes','3 CL','Matemáticas'),
    ('20:40','22:10','Lunes','3 CL','Comercio'),
    ('22:20','23:50','Lunes','3 CL','Inglés'),
    ('17:20','18:50','Martes','3 CL','Marketing'),
    ('19:00','20:30','Martes','3 CL','Gestión Empresarial'),
    ('20:40','22:10','Martes','3 CL','Contabilidad'),
    ('22:20','23:50','Martes','3 CL','Lengua y Comunicación'),
    ('17:20','18:50','Miércoles','3 CL','Comercio'),
    ('19:00','20:30','Miércoles','3 CL','Educación Financiera'),
    ('20:40','22:10','Miércoles','3 CL','Logística'),
    ('22:20','23:50','Miércoles','3 CL','Matemáticas'),
    ('17:20','18:50','Jueves','3 CL','Administración'),
    ('19:00','20:30','Jueves','3 CL','Derecho'),
    ('20:40','22:10','Jueves','3 CL','Inglés'),
    ('22:20','23:50','Jueves','3 CL','Historia económica'),
    ('17:20','18:50','Viernes','3 CL','Gestión Empresarial'),
    ('19:00','20:30','Viernes','3 CL','Comercio'),
    ('20:40','22:10','Viernes','3 CL','Computación Aplicada'),
    ('22:20','23:50','Viernes','3 CL','Ciudadanía y Sociedad');
