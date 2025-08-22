# 📋 Registro de Importación de Vehículos

## 1. Resumen Comparativo

| **Concepto**   | **Definición** |
|----------------|----------------|
| **Entidad**    | Elemento del mundo real o conceptual representado como tabla. |
| **Atributo**   | Característica que describe a una entidad (columna). |
| **Dominio**    | Valores permitidos para un atributo. |
| **Llave primaria** | Atributo(s) que identifican de manera única cada registro en la tabla. |

---

## 2. Ejemplo Integrado del Caso

### 🚗 Entidad: Vehículo

| **Atributo**        | **Dominio**                             | **Llave Primaria** |
|----------------------|------------------------------------------|--------------------|
| numero_serie         | Texto alfanumérico único (VARCHAR(20))  | ✔️ Sí |
| modelo               | Texto (VARCHAR(50))                     | ❌ No |
| marca                | Texto (VARCHAR(50))                     | ❌ No |
| año_fabricacion      | Entero positivo (ej. 1900–2025)         | ❌ No |
| velocidad_maxima     | Entero positivo (km/h)                  | ❌ No |
| precio_declarado     | Decimal positivo (NUMERIC(12,2))        | ❌ No |
| codigo_lote (FK)     | Texto alfanumérico (VARCHAR(20))        | ❌ No |
| codigo_concesionario (FK) | Texto alfanumérico (VARCHAR(20))   | ❌ No |

---

### 📦 Entidad: Lote

| **Atributo**   | **Dominio**                       | **Llave Primaria** |
|----------------|------------------------------------|--------------------|
| codigo_lote    | Texto alfanumérico (VARCHAR(20))  | ✔️ Sí |
| fecha_llegada  | Fecha (DATE)                      | ❌ No |
| pais_origen    | Texto (VARCHAR(50))               | ❌ No |

---

### 🏢 Entidad: Concesionario

| **Atributo**       | **Dominio**                       | **Llave Primaria** |
|---------------------|------------------------------------|--------------------|
| codigo_concesionario | Texto alfanumérico (VARCHAR(20)) | ✔️ Sí |
| nombre_comercial    | Texto (VARCHAR(100))              | ❌ No |
| direccion           | Texto (VARCHAR(150))              | ❌ No |
| persona_contacto    | Texto (VARCHAR(100))              | ❌ No |

---

## 3. Relaciones entre entidades

- Un **Lote** puede contener muchos **Vehículos**.  
- Un **Concesionario** puede recibir muchos **Vehículos**.
