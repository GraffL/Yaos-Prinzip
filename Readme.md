# &bdquo;Abstract&ldquo;

Ein Online-Algorithmus ist ein Optimierungs-Algorithmus, der die Probleminstanz nur nach und nach bekommt und jeweils nur auf Basis der bereits erhaltenen Informationen seine Entscheidungen treffen muss (z.B. Bin-Packing, wobei der Algorithmus immer nur ein Element auf einmal bekommt und dieses sofort einem Bin zuweisen muss). 

Ein Maß für die Leistungsfähigkeit eines solchen Online-Algorithmus ist der Vergleich mit einem optimalen Offline-Algorithmus (also einem Algorithmus dem die gesamte Probleminstanz von Anfang an bekannt ist). Kann das Verhältnis der durch beide Algorithmen verursachte Kosten (bzw. erzielten Gewinne) durch eine feste Zahl &alpha; beschränkt werden, so bezeichnet man den Online-Algorithmus als <em>&alpha;-kompetetiv</em>.

Yaos Prinzip bietet nun eine Möglichkeit durch die Wahl einer Verteilung über den möglichen Anfragesequenzen eine untere Schranke (im Falle der Kostenoptimierung) für die erreichbare Kompetitivität von Online-Algorithmen für ein bestimmtes Problem zu finden. Darüberhinaus zeigt sich sogar, dass diese Schranke durch geeignete Wahl der Verteilung immer scharf gemacht werden kann (allerdings ist im Allgemeinen nicht klar wie diese Verteilung dazu gewählt werden muss).

Der Darstellung in "Online Computation and Competitive Analysis" von Allan Borodin und Ran El-Yaniv folgend modellieren wir Optimierungsprobleme als Zwei-Personen-Nullsummenspiele um dann von Neumanns Minimax-Theorem zum Beweis von Yaos Prinzip verwenden zu können. 

Es stellt sich allerdings heraus, dass dieser &bdquo;Umweg&ldquo; nicht zwingend notwendig ist, wenn man bereits ist auf die Aussage über die Schärfe der Schranke zu verzichten. Ein entsprechender alternativer Beweis wird in der Ausarbeitung bei Satz 4.2 angegeben. Insofern scheint es mir so, dass der Hauptzweck der spieltheoretischen Modellierung mehr darin liegt, die &bdquo;Reichweite&ldquo; von Yaos Prinzip weiter fassen zu können (siehe Fußnote 4 in der Ausarbeitung, S. 6).

<hr />

# Quellen:

## Bilder u.ä.
- R-Code in Beispiel2.R auf Basis des Codes von 42-: http://stackoverflow.com/a/20553451
- Katzegegorien-Diagramm von http://poesophicalbits.blogspot.de/2013/05/lambda-calculus-and-category-theory-in.html via @iblech: https://github.com/iblech/modellkategorien/blob/aabf10fa966a54ef9aeb8c29ff790e16ca67c949/uebung01.tex
- Pokémon-Font: Pokémon Hollow von IPBP: http://www.fontspace.com/ipbp/pokemon-hollow

## Inhalt:
- **"Online Computation and Competitive Analysis"** von Allan Borodin und Ran El-Yaniv (Cambridge University Press, 1998 - ISBN: 978-0521619462) https://books.google.de/books?id=v3faI8pER6IC&lpg=PR13&ots=A6z-DLOPZX&dq=online%20computing%20and%20competitive%20analysis&lr&hl=de&pg=PR4#v=onepage&q&f=false.
- "An optimal on-line algorithm for metrical task system" von Allan Borodin, Nathan Linial und Michael E Saks (Journal of the ACM (JACM) 39.4, 1992 - S. 745–763) <a href="http://www.cs.huji.ac.il/~nati/PAPERS/bls_online.pdf">http://www.cs.huji.ac.il/~nati/PAPERS/bls_online.pdf</a>
- "Online Optimierung" von Sven O. Krumke und Jörg Rambau (8.4.2005) http://www.fsmpi.uni-bayreuth.de/skripten/online_optimierung.pdf
- "Probabilistic computations: Toward a unified measure of complexity" von Andrew Chi-Chin Yao (Foundations of Computer Science, 1977, 18th Annual Symposium on. 1977, S. 222–227)
