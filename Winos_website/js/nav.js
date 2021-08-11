let btn = document.getElementById('icon');
//let btn2 = document.querySelector('#icon')
console.log(btn);
let nav = document.querySelector('nav');
console.log(nav);
let shad = document.querySelector('#shadow');
console.log(shad);


//functions
let test = ()=>{
    alert('btn clicked');
}
//events
//btn.addEventListener('click', test()) Ici la fonction test va se déclencher immédiatement sans vérifier le click
//btn.addEventListener('click', test)

let open = false;

let opennav = ()=> {

    // if open === false
        //recuperer dans une variable JS l'element nav
        //modifier la propriété style de l'element nav à 200 px
        //recupere dans une varialbe js l'element #shadow
        //modifier le display pour le passer à block
        // mettre open = true
    // else 
        // remettre width 0px sur la balise nav
        // remettre un display none sur #shadow
        // mettre open = false
    if (open === false){
        nav.style.width = "200px";
        console.log(nav.style.width);
        shad.style.display = "block";
        open = true;
    }
    else {
        nav.style.width = "0px";
        shad.style.display = "none";
        open = false;
    }
}

btn.addEventListener('click', opennav);
