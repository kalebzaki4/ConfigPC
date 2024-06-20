#!/bin/sh

# configuración del lugar necesario para Ecuador
LANG=es_EC.UTF-8
export LANG
exec /usr/bin/icewm-session



#	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│
#	│ Proyecto Resucitar PC de bajos recursos con iceWM  │
#	│                    RisenPC                         │
#	│ script por Washington Indacochea Delgado (Wachín)  │
#	│   E-Mail: wachin.id@gmail.com en Ecuador           │
#	│  http://facilitarelsoftwarelibre.blogspot.com/     │
#	│ Licencia Pública General de GNU version 2          │    
#	│En español: http://es.tldp.org/Otros/gples/gples.html │
#	│en inglés: https://www.gnu.org/licenses/gpl-2.0.html  │
#	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│
#



# En el paquete
# In the package

# icewm-common

# dentro encontré en synaptic este:
# inside this I founded in synaptic:

# /usr/share/doc/icewm-common/README.Debian.gz

# extrayendo el contenido hay esto:
# extracting the contect are this:


# Localization hints:
# ------------------

# Please make sure that IceWM (or icewm-session) is started with the
# correct locale if you wish the non-ascii character to be displayed
# correctly. If the system-wide locale setting does not match the
# preference of the user or simply does not exist, you must set at least
# LC_CTYPE to the proper character set description in the environment that
# actually starts IceWM. Setting LANG or LC_CTYPE somewhere in .bashrc is
# usually NOT SUFFICIENT because .bashrc file is only executed for interactive
# shells. If icewm is started via .xsession (or .xinitrc) file then this
# needs to be configured there (see example of an .xsession file below).
# To check the locale actually used by IceWM open the About dialog from
# taskbar's context menu (right-click in empty taskbar).

# To enable translated menus, follow these instructions:

# - edit /etc/menu-methods/menu.h
# - locate the line with LOCALE and uncomment it
# - run the update-menus program under the needed locale setting

# If you wish to do this for a user with different locale settings, you
# will need to run update-menus as user with appropriate locale setting.
# And don't forget that the file ~/.icewm/programs will be created and
# used by IceWM in the following sessions, but on package updates, the
# general update-menus command (from root) won't update your personal
# ~/.icewm/programs. So make sure that you run update-menus when needed.

# Example .xsession file:
# ---------------------

# The icewm session can be started from graphical login manager which allow
# selection of available session handlers. If selection is not available (xdm) or
# for console start (startx), local ~/.xsession file can be created, with the
# following contents:


# #!/bin/sh

# locale setting needed for Germany, for example
# LANG=de_DE.UTF-8
# export LANG
# exec /usr/bin/icewm-session

# Nota 1: la primera linea del /bin/sh tiene sólo un asterisco
# Nota 2: Las tres lineas después de "for example" van sin 
# asterisco, si se los dejas no funciona

# -- Eduard Bloch <blade@debian.org>, Wed, 23 Sep 2015 20:59:07 +0200



# Bueno lo que dice aquí es que es necesrio para evitar algún problema con 
# el idioma y no se aparezcan caracteres extraños (esto me pasó en el navegador
# web cuando en los acentos me aparecían caracteres extraños) 
# Y para esto hay que crear el archivo 

# .xsession

# poniendo allí dentro el contenido arriba mencionado
# pero para yo poder saber bien el codigo de mi idioma debo poner en la
# terminal este comando

# locale

# a mi me devuelve esto(sólo pongo la primera linea que me salió):

# LANG=es_EC.UTF-8

# por lo tanto debo poner así:

# lo he cortado y lo puse al principio para que funcione correctamente
# (están puestas correctamente)

# Att: Washington Indacochea Delgado
# 2018-05-03



