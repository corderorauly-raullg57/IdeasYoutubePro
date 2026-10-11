# 📺 IDEASYOUTUBEPRO — Tutorial completo de uso

> **De una idea → a todos los videos de YouTube, ordenados, medidos y listos para ver.**
> Consola de investigación de contenido · Búsqueda · IA gratuita · Reproducción · Perfiles de autor · Descarga con licencia · Exportación

---

## 📋 Índice

1. [¿Qué hace la app?](#1-qué-hace-la-app)
2. [Requisitos e instalación](#2-requisitos-e-instalación)
3. [Conectar YouTube (clave gratuita)](#3-conectar-youtube-clave-gratuita)
4. [Mapa de la interfaz](#4-mapa-de-la-interfaz)
5. [Buscar videos desde una idea](#5-buscar-videos-desde-una-idea)
6. [La lista de resultados](#6-la-lista-de-resultados)
7. [El monitor (reproductor)](#7-el-monitor-reproductor)
8. [Atajos de teclado](#8-atajos-de-teclado)
9. [Perfil y contacto del autor](#9-perfil-y-contacto-del-autor)
10. [Descargar videos y licencias](#10-descargar-videos-y-licencias)
11. [Exportación (CSV / Guion / URLs)](#11-exportación-csv--guion--urls)
12. [Funciones de IA](#12-funciones-de-ia)
13. [Solución de problemas](#13-solución-de-problemas)
14. [Cuota y consumo](#14-cuota-y-consumo)

---

## 1. ¿Qué hace la app?

| Función | Descripción |
|---|---|
| 🔍 Búsqueda | Escribes una idea y rastrea YouTube buscando todos los videos relacionados |
| ✨ IA gratuita | Amplía tu idea en una búsqueda optimizada y analiza el panorama del tema |
| 🗂 Agrupación | Organiza los videos **por autor/canal** o como **ranking por aceptación** |
| 📊 Métricas | Muestra vistas, likes, duración, fecha y un **grado de aceptación 0–100** |
| ▶ Reproducción | Reproductor completo: play, pausa, stop, avance, retroceso, volumen, pantalla completa |
| 👤 Perfiles | Ficha del canal con datos de contacto detectados (correo, WhatsApp, redes…) |
| ⬇ Descarga | Descargador con verificación de **licencia/derechos** (vía yt-dlp) |
| 💾 Exportación | CSV para Excel, archivo de guion con URLs y copiado rápido |

**Todo gratuito:** YouTube Data API v3 (cuota gratis de Google) + Pollinations.ai (IA sin registro) + yt-dlp (open source).

---

## 2. Requisitos e instalación

### Lo que necesitas
- Un navegador moderno (Chrome, Edge o Firefox).
- Una cuenta de Google (para la clave gratuita de la API).
- *(Opcional, para descargas)*: Windows con `winget`, o yt-dlp instalado manualmente.

### Pasos
1. Guarda el archivo **`IdeasYoutubePro.html`** en una carpeta.
2. Guarda en la **misma carpeta** el lanzador **`Abrir_IdeasYoutubePro.bat`** (te lo di en el tutorial de Firefox).
3. **Doble clic en el `.bat`** → arranca un servidor local y abre la app automáticamente en:
   ```
   http://localhost:8080/IdeasYoutubePro.html
   ```
4. Deja la ventana negra abierta mientras uses la app. Ciérrala para detener el servidor.

> ⚠ **No abras el HTML con doble clic directo si usas Firefox**: el protocolo `file://` bloquea el reproductor. Usa siempre el `.bat` (o `python -m http.server 8080`).

---

## 3. Conectar YouTube (clave gratuita)

Sin la clave no se puede buscar. Se configura **una sola vez** y queda memorizada.

1. Pulsa **⚙ ¿CÓMO CONECTO YOUTUBE?** (arriba a la derecha).
2. Sigue el asistente:
   1. Entra en [console.cloud.google.com](https://console.cloud.google.com) y crea un proyecto.
   2. Menú ☰ → **API y servicios → Biblioteca** → busca **YouTube Data API v3** → **HABILITAR**.
   3. **Credenciales → Crear credenciales → Clave de API** → copia la clave (`AIza...`).
   4. Pégala en la app y pulsa **Guardar**.
3. El indicador de la cabecera cambia de `🔴 API SIN CONECTAR` a `🟢 API CONECTADA`.

> 🔒 La clave solo se guarda en tu navegador y viaja directamente a Google. Nada más.

---

## 4. Mapa de la interfaz

```
┌──────────────────────────────────────────────────────────────────┐
│ CABECERA   Logo · estado de API (●) · botón ⚙ de la clave        │
├──────────────────────────────────────────────────────────────────┤
│ TICKER     Cinta deslizante con IDEAS de ejemplo (clic = buscar) │
├──────────────────────────────────────────────────────────────────┤
│ CONSOLA    Campo de idea · IA · filtros · búsquedas recientes    │
├──────────────────────────────────────┬───────────────────────────┤
│ RESULTADOS                           │ MONITOR (reproductor)     │
│ · Estadísticas (videos/canales/…)    │ · Pantalla                │
│ · Exportación · vistas (autores/     │ · Barra de controles      │
│   ranking) · lista de videos         │ · Ficha del video         │
└──────────────────────────────────────┴───────────────────────────┘
```

---

## 5. Buscar videos desde una idea

### Botones de la consola

| Botón | Función |
|---|---|
| **▶ Buscar videos** | Lanza la búsqueda con tu idea (también con la tecla `ENTER`) |
| **✦ Ampliar con IA** | La IA convierte tu idea en una búsqueda SEO optimizada y busca automáticamente |
| **RESULTADOS** (selector) | Cuántos videos pedir por tanda: 10 / 25 / 50 |
| **ORDEN** (selector) | `Relevancia` · `Más vistos` · `Más recientes` |
| **Chips RECIENTES** | Tus últimas 5 búsquedas; clic para repetirlas |
| **Cinta de ideas** | Ideas de ejemplo; clic en cualquiera para buscarla al instante |

### Flujo típico
1. Escribe tu idea: `"huertos urbanos en balcones pequeños"`.
2. (Opcional) Pulsa **✦ Ampliar con IA** para mejorar la consulta.
3. Pulsa **▶ Buscar videos**.
4. La app muestra primero esqueletos de carga y luego la lista completa con métricas reales.
5. Si hay más resultados, aparecerá el botón **↓ Cargar más videos**.

---

## 6. La lista de resultados

### Barra de estadísticas
Cuatro contadores animados: **VIDEOS** encontrados · **CANALES** distintos · **VISTAS SUMADAS** · **MEDIA POR VIDEO**.

### Botones de la cabecera de resultados

| Botón | Función |
|---|---|
| **⬇ CSV** | Exporta la tabla completa a Excel (ver sección 11) |
| **⬇ URLs GUION** | Descarga un .txt con títulos + datos + URLs, listo para guion |
| **⧉ COPIAR URLS** | Copia todas las URLs al portapapeles |
| **✦ Análisis IA del tema** | La IA resume qué contenido domina el tema y propone 4 ideas |
| **POR AUTORES / RANKING** | Cambia la forma de organizar la lista |

### Cada tarjeta de video muestra
- **Número de puesto** (los 3 primeros en dorado, en modo ranking).
- **Miniatura** con duración; al pasar el ratón aparece el botón ▶.
- **Título**, **canal** (con avatar de color) y **antigüedad** ("hace 2 años").
- **👁 vistas** y **👍 likes**.
- **Barra de aceptación 0–100** con etiqueta:

| Puntuación | Etiqueta | Significado |
|---|---|---|
| 85–100 | 🔥 VIRAL | Rendimiento excepcional |
| 65–84 | ESTELAR | Muy alto rendimiento |
| 45–64 | POPULAR | Buen rendimiento |
| 25–44 | ACEPTADO | Aceptación media |
| 0–24 | NICHO | Audiencia pequeña/específica |

### Interacciones
- **Clic en cualquier tarjeta** → el video se carga y reproduce en el monitor.
- La tarjeta en reproducción queda resaltada en rojo.
- **Vista POR AUTORES**: agrupa por canal y ordena los canales por vistas sumadas.
- **Vista RANKING**: ordena todos los videos por puntuación de aceptación.

---

## 7. El monitor (reproductor)

### Botones de la barra superior del monitor

| Botón | Función |
|---|---|
| **👤** | Abre el perfil y contacto del autor del video actual |
| **🔄** | Recarga el video actual (útil si se queda en negro o no arranca) |
| **🔁** | Alterna el dominio del reproductor entre `youtube.com` y `youtube-nocookie.com` (se memoriza cuál funciona en tu equipo) |
| **⛶ TEATRO** | Abre el video en una ventana amplia centrada (modo teatro) |

### Barra de controles clásica

| Control | Función |
|---|---|
| **▶ / ❚❚** | Reproducir / pausar |
| **■** | Detener (y reiniciar la barra de progreso) |
| **−10s** | Retroceder 10 segundos |
| **+10s** | Avanzar 10 segundos |
| **Barra de progreso** | Muestra el avance; **clica en cualquier punto** para saltar a ese momento |
| **Tiempos 0:00 / 0:00** | Minuto actual y duración total |
| **🔊 / 🔇** | Activar / silenciar |
| **Deslizador de volumen** | 0–100 % (se memoriza entre sesiones) |
| **⛶ FULL** | Pantalla completa real; el botón cambia a **SALIR** |

> Si el reproductor oficial aún está cargando, la barra aparece atenuada con el aviso `CARGANDO REPRODUCTOR…` y se activa sola en unos segundos.

### Ficha del video (bajo el monitor)
- Título, canal, vistas, likes, duración, etiqueta de aceptación y chip **✅ CC-BY** si el video tiene licencia Creative Commons.

| Botón | Función |
|---|---|
| **👤 AUTOR** | Ficha completa del canal y datos de contacto (sección 9) |
| **⬇ DESCARGAR** | Ventana de descarga con verificación de licencia (sección 10) |
| **↗ enlace** | Si un video no carga, ábrelo directamente en YouTube |

### Modo teatro y pantalla completa
- **⛶ TEATRO** (barra superior): ventana grande flotante; los controles viajan con ella. Se cierra con **✕ CERRAR (ESC)** o clic fuera.
- **⛶ FULL** (controles): pantalla completa real del monitor o del teatro. **Se sale con `ESC`.**

---

## 8. Atajos de teclado

| Tecla | Acción |
|---|---|
| `ESPACIO` | Play / Pausa |
| `←` / `→` | Retroceder / avanzar 10 segundos |
| `F` | Pantalla completa (y salir) |
| `M` | Silencio sí/no |
| `ESC` | Salir de pantalla completa · cerrar teatro · cerrar ventanas |

> Los atajos se desactivan automáticamente mientras escribes en un campo de texto.

---

## 9. Perfil y contacto del autor

Con un video en reproducción, pulsa **👤** (monitor), **👤 AUTOR** (ficha) o **👤 AUTOR** (teatro).

### Qué muestra la ventana
- **Banner y avatar** del canal.
- **Nombre**, @usuario personalizado, **país con bandera** y antigüedad en YouTube.
- **Suscriptores · vistas totales · nº de videos publicados.**
- **📇 Datos de contacto detectados**: la app analiza la descripción pública del canal y extrae, si existen:

| Icono | Tipo |
|---|---|
| ✉️ | Correos electrónicos (clic → abre tu gestor de correo) |
| 🟢 | Enlaces de WhatsApp (clic → abre el chat) |
| 📞 | Posibles números de WhatsApp mencionados |
| 📸 🎵 🐦 📘 🎮 ✈️ 💛 💙 🎧 🎬 | Instagram, TikTok, X, Facebook, Twitch, Telegram, Patreon, PayPal, SoundCloud, Spotify |
| 🌐 | Páginas web propias |

- **📝 Descripción completa** del canal.
- Botones: **▶ Ver canal en YouTube** y **ℹ Pestaña «Acerca de»**.

### Importante sobre los datos de contacto
- 🔒 La API de YouTube **no expone** correos ni teléfonos privados. Lo mostrado se extrae de la **información pública** del canal.
- Si el creador no publicó nada, la ventana lo indica claramente.
- El **correo comercial oficial** (si lo activó el creador) solo aparece en la pestaña «Acerca de» de YouTube, tras una verificación manual; el botón ℹ te lleva allí.

---

## 10. Descargar videos y licencias

Con un video en reproducción, pulsa **⬇ DESCARGAR**.

### Paso 1 — Comprobación de derechos
La app consulta la licencia real del video en la API y muestra un semáforo:

| Resultado | Qué significa |
|---|---|
| ✅ **Creative Commons (CC-BY)** | El autor permite descargar y reutilizar citando la fuente. Luz verde. |
| 🔐 **Licencia estándar** | Derechos reservados del autor. La descarga directa por navegador está bloqueada; el descargador es para **uso personal** si tu legislación lo permite. Para reutilizar, pide permiso (usa 👤 AUTOR). |
| ℹ **Licencia no disponible** | No se pudo verificar; asume derechos reservados. |

### Paso 2 — Elegir formato
- **🎬 Video MP4**: hasta 1080p / 720p / 360p (ligero) / mejor disponible.
- **🎧 Solo audio MP3**.

### Paso 3 — Obtener el descargador
| Botón | Qué hace |
|---|---|
| **💾 Descargar script (.bat)** | Genera un archivo `.bat` personalizado con tu video. Doble clic → descarga en `Descargas\IdeasYoutubePro`. Instala solo yt-dlp/ffmpeg si faltan (vía winget). |
| **⧉ Copiar comando** | Copia el comando `yt-dlp` para pegarlo en CMD si ya lo tienes instalado. |

### ¿Por qué mediante yt-dlp?
El navegador **no puede** descargar streams de YouTube (van cifrados y segmentados). yt-dlp es la herramienta gratuita y open source estándar para hacerlo desde tu equipo.

### Si la descarga falla
El propio `.bat` informa al final. Causas típicas relacionadas con **derechos**:
- El autor restringió el contenido o bloqueó descargas.
- Video con verificación de edad, solo para miembros, privado o bloqueado en tu país.
- Otras: falta ffmpeg o problema de conexión (también se indican).

> ⚖ El uso de la descarga es responsabilidad del usuario. Respeta los Términos de YouTube y los derechos de autor.

---

## 11. Exportación (CSV / Guion / URLs)

Disponibles en la cabecera de resultados cuando hay videos cargados (incluye todo lo obtenido con "Cargar más").

| Botón | Archivo | Contenido |
|---|---|---|
| **⬇ CSV** | `.csv` (compatible con Excel) | Nº, título, canal, URL, vistas, likes, duración, aceptación 0–100, etiqueta, **licencia**, fecha de publicación |
| **⬇ URLs GUION** | `.txt` | Lista numerada con título, canal, vistas, duración, aceptación, licencia y URL — lista para trabajar un guion |
| **⧉ COPIAR URLS** | portapapeles | Solo las URLs, una por línea |

> El CSV usa `;` como separador y BOM UTF-8: ábrelo directamente en Excel y se verá perfecto, con acentos incluidos.

---

## 12. Funciones de IA

La app usa **Pollinations.ai** (gratuita, sin clave ni registro).

| Función | Botón | Qué hace |
|---|---|---|
| **Ampliar idea** | ✦ Ampliar con IA (consola) | Convierte tu idea en una frase de búsqueda SEO optimizada (máx. 8 palabras) y lanza la búsqueda |
| **Análisis del tema** | ✦ Análisis IA del tema (resultados) | Analiza los 12 videos más vistos encontrados y responde: qué contenido domina el tema + 4 ideas de video originales |

> Si el servicio de IA está saturado o sin conexión, la app avisa y sigue funcionando con tu búsqueda original.

---

## 13. Solución de problemas

| Problema | Solución |
|---|---|
| El video no se reproduce en **Firefox** | Abre la app con el `.bat` (localhost), no con doble clic. Si persiste: icono 🛡 de la barra de direcciones → "Desactivar la protección en este sitio". |
| Aviso amarillo `file://` en la consola | Estás abriendo el HTML directo desde el disco. Usa el `.bat` o `python -m http.server 8080`. |
| Pantalla negra con audio (Firefox) | Ajustes → General → Rendimiento → desmarca "usar aceleración de hardware" y reinicia. |
| El reproductor muestra error o no carga | Pulsa 🔄 recargar; si sigue, pulsa 🔁 para cambiar el dominio del reproductor; como último recurso usa el enlace ↗ "Ábrelo en YouTube". |
| "Has agotado la cuota gratuita de hoy" | La cuota de Google (10.000 unidades) se reinicia cada 24 h. Ver sección 14. |
| "La clave de API no es válida" | Revisa la clave en ⚙ ¿CÓMO CONECTO YOUTUBE? (debe empezar por `AIza...`). |
| "Debes HABILITAR la YouTube Data API v3" | Falta el paso 2 del asistente: habilitar la API en Google Cloud. |
| Sin resultados | Reformula la idea con otras palabras o usa ✦ Ampliar con IA. |
| La descarga falla | Lee el mensaje del `.bat` (sección 10); suele ser restricción de derechos o que falta ffmpeg. |
| La IA no responde | Servicio gratuito saturado; reintenta en unos segundos. |

---

## 14. Cuota y consumo

La capa gratuita de Google da **10.000 unidades/día** (se reinicia cada 24 h):

| Acción | Coste |
|---|---|
| Una búsqueda | ~100 unidades |
| Estadísticas de los resultados | 1 unidad por tanda de 50 videos |
| Perfil de autor | 1 unidad (y se guarda en caché: repetir no cuesta) |
| Verificar licencia al descargar | 1 unidad solo si no se conocía |
| Reproducir, exportar, IA, perfiles ya cargados | **0 unidades** |

📌 **Ejemplo:** con 5 búsquedas diarias de 25 videos gastarías ~510 unidades ≈ **5 % de tu cuota diaria**.

---

## ✅ Resumen rápido de flujo profesional

```
1. Abrir con Abrir_IdeasYoutubePro.bat
2. Escribir la idea  →  ✦ Ampliar con IA  →  ▶ Buscar
3. Explorar POR AUTORES o RANKING  →  ↓ Cargar más si hace falta
4. ✦ Análisis IA del tema  →  apuntar ideas
5. Clic en un video  →  verlo en el monitor (⛶ FULL para revisar)
6. 👤 AUTOR  →  copiar contacto si se necesita permiso
7. ⬇ DESCARGAR  →  revisar licencia  →  💾 script .bat
8. ⬇ CSV / ⬇ URLs GUION  →  llevar a Excel o al guion
```

---

*IdeasYouTubePro · Consola de investigación de contenido · v1.6*
*Datos: YouTube Data API v3 (gratis) · IA: Pollinations.ai (gratis) · Descargas: yt-dlp (open source)*