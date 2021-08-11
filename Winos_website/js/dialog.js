// variables
let btns = document.querySelectorAll('.card button');
console.log(btns);
let diag = document.querySelector('.window');
console.log(diag);
let h1 = document.querySelector('.dialog h1');
let p = document.querySelector('.dialog p');
let btnClose = document.querySelector('.window button');






// functions
let fctn = (event)=>{
    //console.log("Button card OK");
    const title = event.target.parentNode.parentNode.firstElementChild.firstElementChild.textContent;
    console.log(event.target.parentNode.parentNode.firstElementChild.firstElementChild.textContent);
    const desc = event.target.parentNode.parentNode.firstElementChild.firstElementChild.nextElementSibling.textContent;
    console.log(event.target.parentNode.parentNode.firstElementChild.firstElementChild.nextElementSibling.textContent);
    //const h1Cont = event.target.firstElementChild.firstElementChild.textContent
    console.log(event.target.parentNode.parentNode.parentNode.parentNode.parentNode);
    //console.log(h1Diag);
    diag.style.display = "flex";
    h1.innerHTML=title;
    p.innerHTML=desc;

}

let closediag = () => {
    diag.style.display = "none";
}






// events
//btns.addEventListener('click', fctn);
btns.forEach((item) => {
    item.addEventListener('click', fctn);
})

btnClose.addEventListener('click', closediag);


// quand on clique sur un bouton 'open dialog' dans une card
// on veut récupérer le premier title et la première description de notre card
// ouvrir la boite de dialog et afficher dans cette boite de dialog les titres etdescription que l'on vient de récupérer
// pour finir, quand on clique close de la boite de dialogue, on veut fermer cete boite


// detail algorythmique
// 1. enregistrer dans une variable les boutons qui sont dans nos card
// 2. addEventListener sur ces boutons pour appeler une fonction au click sur ces boutons
// 3. récupérer le noeud text ou le contenu textuel à l'intérieur du h3 qui se trouve dans le premier li du card dans lequel se trouve ce bouton
// 4. faire la meme chose puor le contenu textuel du span situé juste après le h3
// 5. cibler le contenu textuel qui se trouve dans le h1 de notre boite de dialog
// 6. le remplacer par le contenu textuel du card h3 (title) que l'on a récupéré jsute avant
// 7. cibler le contenu textuel qui se trouve dans le p de notre boite de dialog
// 8. le remplacer par le contenu textuel du card span (description) que l'on a récupéré jsute avant
// 9. afficher la boite de dialog (remplacant display none par display flex)
// 10. récupérer le bouton close de la boite de dialog
// 11. addeventlistener pour ajouter un click sur le bouton close
// 12. la fn close remet le display none sur l'élément .window