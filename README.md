# Die Buchausleihe Datenbank
## Github Repository für Modul DLBDSPBDM01_D

## Zusammenfassung der Buchausleihe Datenbank

Bei diesem Repository handelt es sich um die Datenbank in Form einer SQL-Datei mit dem Namen book_lending_final.
Die Datenbank stellt ein Buchausleihsystem für eine lokale Gemeinschaft dar. Mit ihrer Hilfe können Benutzer Bücher 
anbieten und ausleihen. Sie hält den Datenbestand der Bücher und ihrer Besitzer und kann verwendet werden, um 
die Ausleihvorgänge inklusive der persönlichen Übergaben und Sendungen zu verwalten und nachzuvollziehen.
Über die Anwendung können Benutzer ihre Buchwünsche veröffentlichen und Bewertungen zu den verschiedenen
Themenbereichen wie Bücher und Autoren abgeben.
Es wird eine standortbasierte Suche angeboten um verfügbare Bücher in einer angegebenen Entfernung zu finden.
Außerdem können mit der Datenbank Communitytreffen organisiert werden.


## Installation über Kommandozeile:

Starten des Programmes MySQL / MariaDB mittels
  mysql -u {Benutzername} -p 

Nach der Eingabe des Passwortes öffent sich die interaktive Datenbankshell. 
Danach muss die Datenbank angelegt werden mit:  
   `CREATE DATABASE book_lending_final;`

Dann wird die gerade erstellte Datenbank als aktive DB gesetzt:  
   `USE book_lending_final;`

Jetzt sollte hinter dem MariaDB Prompt der Name aktiven Datenbank angezeigt werden.

Der Import der Datenbank wird über das source Kommando ausgeführt:  
  `source {/Pfad/zur/Datei/}book_lending_final.sql;`

Es werden alle Statements der SQL-Datei nacheinander ausgeführt, wobei die Tabellen erstellt und
mit den Daten gefüllt werden.

## Installation über phpMyAdmin:

Die Weboberfläche von phpMyAdmin muss geöffnet werden.  
Beispielsweise:  
  http://localhost/phpmyadmin/

Als nächstes wird über den Tab `'Importieren'` -> `'Datei auswählen'` die Datei `book_lending_final.sql` 
an ihrem Speicherort ausgewählt.

Der Import wird dann über die Schaltfläche `'Importieren'` am Ende der Seite gestartet und die Datenbank
wird erstellt.
