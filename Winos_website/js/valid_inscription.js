// variable
// une variable pour cibler le bouton d'envoi
let forminscript = document.getElementById('inscriptionform');
console.log(forminscript);
let elementsinscript = [...forminscript.querySelectorAll('input:not([type=radio]), textarea, select')];
console.log(elementsinscript);
// fonctions
// déclarer la fonction valider
let inscription = (event) => {
    event.preventDefault();
    forminscript.querySelectorAll('.erreur').forEach(erreur => erreur.style.display="none");
    const empty = elementsinscript.filter(el => el.value === "");
    console.log(empty);
    if (empty.length === 0) form.submit();
    else{
        empty.forEach(el=>{
        const err=el.parentElement.lastElementChild;
        err.style.display='flex';
        })
    }
}
//events
//ecouteur d'evenement sur le bouton d'envoi ('click', valider)
forminscript.addEventListener('submit', inscription);