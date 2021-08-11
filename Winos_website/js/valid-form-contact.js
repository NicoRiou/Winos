// faire apparatire le msg d'erreur en dessous de chalos si le champs concerné est vide.
/*let btnValid = document.querySelector('[type=submit]');
let Inpt = document.querySelectorAll('textarea [type=text]');
console.log(Inpt);
let Err = document.querySelectorAll('.erreur');
console.log(Err); */
let form = document.querySelector('#formcontact');
console.log(form);
let elements = form.elements;

let fctn = (event)=>{
 console.log("Bouton Valider OK");
        event.preventDefaut();
        console.log(this.name);
        for (let element of elements) {
            
        }
    
})

}

form.addEventListener('submit', fctn);


/* Inpt.forEach((item) => {
    if (item === '') {
        err.style.display = "block";
    } */