# 📺 IdeasYouTubePro

> **De una idea → a todos los videos de YouTube: buscados, agrupados por autor, medidos y listos para ver.**

Consola profesional de investigación de contenido construida en **un solo archivo HTML** (sin frameworks, sin backend, sin costes).

![HTML](https://img.shields.io/badge/HTML5-único%20archivo-ff3d3d) ![JS](https://img.shields.io/badge/JavaScript-puro-ffc84a) ![API](https://img.shields.io/badge/YouTube%20Data%20API-v3-green) ![IA](https://img.shields.io/badge/IA-gratuita-blue)

---

## ✨ Funciones

| Área | Qué hace |
|---|---|
| 🔍 **Búsqueda inteligente** | De una idea escrita a una lista de videos relacionados, con paginación y filtros (relevancia / más vistos / recientes) |
| ✨ **IA gratuita** | Amplía tu idea en una consulta SEO optimizada y analiza el panorama del tema (Pollinations.ai, sin registro) |
| 🗂 **Organización** | Vista **por autores** (canales con vistas sumadas) o **ranking** por grado de aceptación |
| 📊 **Métricas reales** | Vistas, likes, duración, antigüedad y **puntuación de aceptación 0–100** (Viral / Estelar / Popular / Aceptado / Nicho) |
| ▶ **Reproductor completo** | Play, pausa, stop, ±10 s, barra de progreso clicable, volumen, modo teatro, **pantalla completa** y atajos de teclado |
| 👤 **Perfil del autor** | Ficha del canal: suscriptores, vistas totales, país, descripción y **contactos detectados** (correo, WhatsApp, redes, web) |
| ⬇ **Descarga con licencia** | Verifica la licencia (CC-BY ✅ / estándar 🔐) y genera un descargador `.bat` con yt-dlp |
| 💾 **Exportación** | CSV para Excel, guion `.txt` con URLs y copiado al portapapeles |

## 🚀 Inicio rápido

1. Clona o descarga el repositorio.
2. Guarda `IdeasYoutubePro.html` y el lanzador `Abrir_IdeasYoutubePro.bat` en la misma carpeta.
3. Doble clic en el `.bat` → abre la app en `http://localhost:8080`.
4. Pulsa **⚙ ¿Cómo conecto YouTube?** y sigue el asistente para pegar tu **clave gratuita** de [Google Cloud Console](https://console.cloud.google.com) (YouTube Data API v3).
5. Escribe tu idea → **▶ Buscar videos**.

> 📖 Tutorial completo: [`TUTORIAL_IdeasYoutubePro.md`](TUTORIAL_IdeasYoutubePro.md) · Manual imprimible: `Manual_IdeasYoutubePro_imprimible.html`

## ⌨️ Atajos

`ESPACIO` play/pausa · `←/→` ±10 s · `F` pantalla completa · `M` silencio · `ESC` salir

## 🧰 Tecnologías

- **HTML + CSS + JavaScript puro** (cero dependencias, cero build).
- **YouTube Data API v3** — cuota gratuita de Google (10.000 unidades/día).
- **YouTube IFrame Player API** — controles del reproductor.
- **Pollinations.ai** — generación de texto gratuita sin clave.
- **yt-dlp** (opcional) — descargas bajo responsabilidad del usuario, con verificación de licencia.

## ⚖️ Aviso legal

Los datos de contacto mostrados provienen únicamente de la **información pública** de cada canal. Las descargas se ofrecen con verificación de licencia y son responsabilidad del usuario: respeta los Términos de YouTube y los derechos de autor.

## 📂 Archivos

| Archivo | Descripción |
|---|---|
| `IdeasYoutubePro.html` | La aplicación completa |
| `Abrir_IdeasYoutubePro.bat` | Lanzador local (Windows) |
| `TUTORIAL_IdeasYoutubePro.md` | Tutorial completo de uso |
| `Manual_IdeasYoutubePro_imprimible.html` | Manual en formato imprimible/PDF |

---

*Hecho con ❤ y JavaScript puro · v1.6*