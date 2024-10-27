Laborator 3

Bîrgoan George 3123b
---

1. **Care este ordinea de desenare a vertexurilor pentru aceste metode (orar sau anti-orar)? Desenați axele de coordonate din aplicația-template folosind un singur apel GL.Begin().**

   Ordinea în care sunt desenate vertexurile este determinată de secvența în care apelăm metodele `GL.Vertex`. Dacă acestea sunt definite în sens anti-orar, poligonul este considerat cu fața orientată către utilizator.

2. **Ce este anti-aliasing? Prezentați această tehnică pe scurt.**

   Anti-aliasing este o metodă folosită pentru a atenua artefactele vizuale ce apar atunci când imaginile sunt redate la rezoluții mai mici. Aceste artefacte apar din cauza limitării pixelilor în a reda bine curbele și liniile drepte.

   Tehnica anti-aliasing utilizează metode precum supersampling, multisampling sau filtre de postprocesare pentru a obține efecte de netezire.

3. **Care este efectul rulării comenzii GL.LineWidth(float)? Dar pentru GL.PointSize(float)? Funcționează în interiorul unei zone GL.Begin()?**

   - `GL.LineWidth(float)` ajustează grosimea liniilor trase.  
   - `GL.PointSize(float)` mărește dimensiunea punctelor trasate.  
   - Aceste comenzi nu pot fi folosite în interiorul secvenței `GL.Begin()`.

4. **Răspundeți la următoarele întrebări (utilizați ca referință eventual și tutorii OpenGL Nate Robbins):**

   - **Care este efectul utilizării directivei LineLoop atunci când sunt desenate segmente de dreaptă multiple în OpenGL?**  
     `GL.LineLoop` creează un set de linii continue în care punctul final al unei linii devine punctul de pornire pentru următoarea, iar la sfârșit se leagă primul și ultimul punct, formând o buclă.

   - **Care este efectul utilizării directivei LineStrip atunci când sunt desenate segmente de dreaptă multiple în OpenGL?**  
     Similar cu `LineLoop`, dar fără a conecta punctele de început și de sfârșit, rezultând o linie continuă fără închidere.

   - **Care este efectul utilizării directivei TriangleFan atunci când sunt desenate segmente de dreaptă multiple în OpenGL?**  
     `GL.TriangleFan` creează un triunghi cu un punct central, iar restul vertexurilor sunt conectate la acesta într-o formă radială, asemănătoare unui ventilator.

   - **Care este efectul utilizării directivei TriangleStrip atunci când sunt desenate segmente de dreaptă multiple în OpenGL?**  
     `GL.TriangleStrip` generează o serie de triunghiuri unde fiecare vertex nou completează un triunghi cu ultimele două vertexuri definite, formând o bandă continuă.

6. **Urmăriți aplicația „shapes.exe” din tutorii OpenGL Nate Robbins. De ce este importantă utilizarea de culori diferite (în gradient sau culori selectate per suprafață) în desenarea obiectelor 3D? Care este avantajul?**

   Folosirea diverselor culori sau a gradientelor este esențială pentru a da impresia de profunzime, mai ales în absența umbrelor sau a shaderelor, și ajută la conturarea formelor obiectelor în 3D.

7. **Ce reprezintă un gradient de culoare? Cum se obține acesta în OpenGL?**

   Un gradient de culoare este o tranziție treptată între două sau mai multe culori. Acesta poate fi realizat în OpenGL atribuind culori diferite vertexurilor unui poligon, permițând culorilor să se amestece între ele.
