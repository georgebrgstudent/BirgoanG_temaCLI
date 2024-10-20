# Raspunsuri Laborator 2
```
George Birgoan
Grupa 3133B
```

## Ce este un viewport?
 Un viewport reprezintă o secțiune din bufferul grafic care stabilește ce elemente grafice și ce părți ale acestora vor fi vizibile pe ecran.

## Ce înseamnă conceptul de frames per second în contextul bibliotecii OpenGL?
În OpenGL, FPS (frames per second) indică numărul de cadre care pot fi generate și afișate într-o secundă.

## Când este apelată metoda OnUpdateFrame()?
Metoda OnUpdateFrame() este rulată înainte de OnRenderFrame() pentru fiecare cadru pe care programul urmează să-l proceseze.

## Ce este modul de randare imediată?
 Modul de randare imediată este o tehnică veche și depreciată în OpenGL, care implică folosirea funcțiilor GL.Begin() și GL.End(), iar între acestea sunt desenate vertex-urile. Acest mod este ușor de utilizat, dar are performanțe mai scăzute.

## Care este ultima versiune de OpenGL ce suportă randarea imediată?
 Ultima versiune de OpenGL care suportă modul de randare imediată este OpenGL 2.1.

## Când este rulată metoda OnRenderFrame()?
 Metoda OnRenderFrame() este apelată de fiecare dată când un nou cadru este randat. De exemplu, dacă randăm la 60 FPS, aceasta va fi apelată de 60 de ori pe secundă.

## De ce este necesar ca metoda OnResize() să fie executată cel puțin o dată?
 Este important ca OnResize() să fie apelată deoarece, inițial, fereastra poate avea dimensiunea 0x0, iar aceasta metodă asigură că OpenGL este configurat corect pentru dimensiunea dorită a ferestrei.

## Ce semnifică parametrii metodei CreatePerspectiveFieldOfView() și care sunt domeniile lor de valori?
 Metoda CreatePerspectiveFieldOfView() definește câmpul vizual în care obiectele sunt afișate pe ecran. Un parametru important este unghiul de vedere, de exemplu MathHelper.DegreesToRadians(60) pentru un câmp vizual de 60 de grade. Alți parametri includ:

 zNear: distanța minimă sub care obiectele nu vor fi afișate.
 zFar: distanța maximă peste care obiectele nu vor mai fi vizibile.
 aspect: raportul de aspect al ecranului.
