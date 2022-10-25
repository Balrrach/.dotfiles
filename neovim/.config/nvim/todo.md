# Fix in Neovim

- Poner treesitter a funcionar des
- Personalizar statusline para que muestre la rama de git actual
- Echarle un vistazo a ctrlp como sustituto a telescope/fzf
- Cambiar telescope por fzf que es más rápido y discreto. Configurarlo para que funcione con Colemak
- Reestructurar el directorio
- Convertir la configuración a lua
<!-- - Neovim crashea al pegar codigo -->
- Tunear Autopairs
<!-- - Pedir al autor del tema actual que se inviertan los colores bajo un area seleccionada como con gitdiff -->
<!-- - Aumentar el tamaño de la ventana de lsp.hover -->


# Casos de uso, requisitos y condiciones Neovim

1. Gestionar un proyecto:
- Controlar la raiz del proyector mediante algún plugin
- Lanzar comandos del gestor de tareas desde neovim
- Gestionar la creación, eliminación, copia, corte y renombre de archivos y carpetas desde neovim, . Las modificaciones serias de la estructura del proyecto no tienen que gestionarse desde neovim puesto que dicha tarea compete a un explorador de archivos.
- Gestionar un formatter

2. Escribir informes:
- Markdown: Es necesario una preview  con sincronización y un plugin para gestionar las tablas
- Latex: Es indispensable una preview con sincronización

3. Maestría con Vim
- Buscar y reemplazar
- Tener soltura total en la apertura, cierre y reestructuración de ventanas, buffer... Considerar un plugin que añada pestañas
- Crear y modificar snippets con soltura
- Crear un mapeado que se sienta absolutamente
- Abrir enlaces en el navegador
- Surround

4. Programación
- Añadir refactorización del codigo y aprender a usarla
- Aprender gestionar git
- Estudiar los distintos tipos de fuentes de autocompletado
- Linting

