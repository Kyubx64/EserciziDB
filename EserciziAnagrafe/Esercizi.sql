/*Query 1
persone maggiorenni, con nome e regione di nascita*/

select Persona.Nome, Città.Regione
from Persona left join Città on Persona.CittàNascita = Città.Nome
where Persona.Età >= 18;

/*Query 2
coppie <genitore,figlio> nati nella stessa città*/

select pf.Nome as nome_figlio, pg.Nome as nome_genitore
from Persona as pf join Genia as g on pf.Nome = g.Figlio
    join Persona as pg on pg.nome = g.Genitore
where pf.CittàNascita = pg.CittàNascita;

/*Query 3
Città in cui è nato almeno un genitore di oltre 50 anni*/

select distinct Persona.CittàNascita, Persona.Nome 
from Persona join Genia on Persona.Nome = Genia.Genitore
where Persona.Età >= 50 

/*Query 4
vogliamo sapere chi sono i nonni*/

select distinct F.Genitore
from Genia F join Genia G on G.Genitore = F.Figlio
