Laborator 3

Bîrgoan George 3133b
---

2. Ce este anti-aliasing?
Anti-aliasing reprezintă o metodă folosită în grafică computerizată pentru a diminua apariția artefactelor vizuale denumite „aliased edges”, care se produc atunci când liniile sau contururile sunt create la o rezoluție joasă. Aceste artefacte sunt adesea vizibile ca margini zimțate sau pixelate.

Cum funcționează? Anti-aliasing îmbunătățește aspectul vizual prin aplicarea unor tehnici de amestecare a culorilor pixelilor de pe marginea unui obiect, generând o tranziție mai fluidă între nuanțe, ceea ce face ca marginile să pară mai netede.

3. Efectul rulării comenzilor GL.LineWidth(float) și GL.PointSize(float)
GL.LineWidth(float): Această funcție reglează grosimea liniilor desenate. De exemplu, apelul glLineWidth(2.0f) va face ca liniile să aibă de două ori grosimea standard. Totuși, este important de menționat că nu toate plăcile grafice suportă toate valorile de grosime specificate și acest apel trebuie realizat în cadrul unei zone GL.Begin().

GL.PointSize(float): Această comandă ajustează dimensiunea punctelor desenate. De exemplu, glPointSize(5.0f) va mări punctele de cinci ori față de dimensiunea standard. Ca și GL.LineWidth, aceasta funcționează de asemenea în interiorul unei zone GL.Begin().

4. Efectul directivelor de desenare
LineLoop: Utilizarea GL.LineLoop generează o linie închisă prin conectarea ultimului vertex cu primul. Aceasta este utilă pentru desenarea poligoanelor închise.

LineStrip: Prin intermediul GL.LineStrip, se realizează o serie de linii conectate, utilizând vertexurile în ordinea lor de definire. Acest lucru produce o formă continuă de linii.

TriangleFan: Directiva GL.TriangleFan permite desenarea unui grup de triunghiuri ce împărtășesc un vârf comun. Aceasta reprezintă o metodă eficientă pentru a crea forme convexe.

TriangleStrip: GL.TriangleStrip funcționează similar cu TriangleFan, dar formează triunghiuri prin adăugarea unor vertexuri suplimentare. Aceasta permite realizarea unor forme mai complexe folosind un număr redus de vertexuri.

6. Importanța culorilor diferite în desenarea obiectelor 3D
Utilizarea unor culori variate, fie sub formă de gradiente, fie prin selecția de culori pentru suprafețe, este esențială în crearea unor obiecte 3D vizual atractive și în îmbunătățirea percepției adâncimii. Culorile evidențiază detaliile și formele, facilitând spectatorilor o mai bună apreciere a volumului și texturii obiectului.

7. Ce reprezintă un gradient de culoare?
Un gradient de culoare este o tranziție lină între două sau mai multe nuanțe. În OpenGL, se poate obține prin interpolarea culorilor între vertexuri, permițându-le să se amestece natural. Acest efect se poate realiza prin atribuirea unor culori diferite fiecărui vertex și lăsând OpenGL să gestioneze interpolarea.

8. Ce este transparența în OpenGL?
Transparența în OpenGL este gestionată prin canalul alpha, care poate varia între 0 și 1. O valoare de 0 reprezintă transparență completă, în timp ce 1 indică opacitate totală. Acest control al transparenței facilitează crearea unor efecte vizuale de suprapunere, permițând vizibilitatea obiectelor din spate prin cele din față.

10. Efectul utilizării unei culori diferite pentru fiecare vertex
Atunci când se atribuie culori diferite fiecărui vertex într-un mod strip sau în procesul de desenare a triunghiurilor, OpenGL realizează o interpolare a acestor culori. Aceasta se traduce printr-o tranziție lină între nuanțe pe suprafața obiectului, creând un efect vizual armonios.
