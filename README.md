# 🏠 Análisis de Inseguridad Alimentaria en Colombia

**Autor:** [Sergio David Huertas Ramirez]  
**Fecha:** 11 de Marzo 2026  
**Repositorio:** https://github.com/chechitoooo/taller_seguridad_alimentaria.git


---

## 📖 Descripción del Proyecto

Este proyecto realiza un análisis exhaustivo de la **inseguridad alimentaria** en hogares colombianos utilizando datos de la **Gran Encuesta Integrada de Hogares (GEIH)** del DANE y reportes del **Programa Mundial de Alimentos (WFP)**. El estudio examina la prevalencia de inseguridad alimentaria a nivel nacional y departamental, identificando patrones regionales, brechas territoriales y factores asociados.

A través de técnicas de análisis estadístico y visualización de datos, el proyecto busca proporcionar evidencia sólida para la formulación de políticas públicas focalizadas. Los resultados revelan que **más de la mitad de los hogares (57.7%)** experimentan inseguridad alimentaria, con marcadas diferencias entre departamentos que van desde **31.2% en Bogotá hasta 79.2% en Sucre**.

El análisis incluye estadísticas descriptivas, correlaciones con variables socioeconómicas, visualizaciones departamentales y una matriz de priorización territorial que combina porcentajes de afectación con números absolutos de hogares, permitiendo identificar regiones críticas que requieren intervención urgente.

---

## 🐳 Instrucciones para Ejecutar con Docker

### Prerrequisitos
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado
- [Git](https://git-scm.com/) instalado
- Mínimo 4GB de RAM disponible

### Pasos de ejecución

```bash
# 1. Clonar el repositorio
git clone https://github.com/chechitoooo/taller_seguridad_alimentaria.git
cd taller_seguridad_alimentaria

# 2. Descargar los datos (enlaces en la sección "Fuentes de datos")
# Crear carpeta datos_dane y colocar allí los archivos descargados
# Estructura esperada:
# datos_dane/
#   ├── WFP_Colombia_2024.pdf
#   └── [archivos DBF del DANE] (opcional, no necesarios para análisis básico)

# 3. Construir y ejecutar el contenedor
docker-compose up --build

# 4. Acceder a Jupyter Notebook
# Abre tu navegador en: http://localhost:8888
# Token: (revisa la terminal, aparecerá un token automático)

# 5. Para detener el contenedor
# Presiona Ctrl+C en la terminal donde está corriendo
# O en otra terminal: docker-compose down
```
```bash
\subsection{Estructura del proyecto}

A continuación se presenta la estructura de carpetas del proyecto:

\begin{verbatim}
taller-seguridad-alimentaria/
│
├── 📄 README.md                    # Descripción del proyecto
├── 🐳 Dockerfile                    # Configuración del contenedor
├── 🐳 docker-compose.yml            # Orquestación de servicios
├── 📦 requirements.txt              # Dependencias de Python
├── 🔒 .gitignore                    # Archivos ignorados por Git
│
├── 📁 datos/                        # Carpeta para datos fuente (NO SUBIR)
│   └── .gitkeep                     # Mantiene la carpeta en el repo
│
├── 📁 notebooks/                    # Notebooks y scripts de análisis
│   └── analisis_completo.ipynb      # Notebook principal con el análisis
│
├── 📁 resultados/                    # Resultados generados
│   ├── datos_combinados_wfp_dane.csv
│   ├── grafico_inseguridad_departamentos.png
│   └── grafico_correlaciones.png
│
└── 📁 informe/                       # Informe final
    └── informe_seguridad_alimentaria.pdf
\end{verbatim}
```
🔗 Fuentes de Datos
WFP Colombia 2024: https://es.wfp.org/publicaciones/evaluacion-de-la-seguridad-alimentaria-para-la-poblacion-colombiana-2024

1. Descargue el 'Informe completo' en Español (PDF ~3.5 MB)
2. Guárdelo como: WFP_Colombia_2024.pdf


DANE - GEIH: https://microdatos.dane.gov.co/index.php/catalog/861/get-microdata
Regístrese si no tiene cuenta (es gratuito)
Descargue al menos: Datos_vivienda, Caracteristicas_composicion_hogar, Condiciones_vida_hogar

📊 Principales Hallazgos

1. 57.7% de los hogares colombianos presentan inseguridad alimentaria

2. Sucre (79.2%), Córdoba (76.8%) y La Guajira (76.4%) lideran en porcentaje de afectación

3. Bogotá D.C. (31.2%) tiene la menor incidencia (brecha de 48 puntos)

4. La Guajira y Nariño son críticos: alto porcentaje y alto volumen de casos

5. Antioquia lidera en número absoluto (2,271 hogares) con porcentaje moderado


