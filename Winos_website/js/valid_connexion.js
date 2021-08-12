// variable
// une variable pour cibler le bouton d'envoi
let formconnect = document.getElementById('connexionform');
console.log(formconnect);
let elementsconnect = [...formconnect.querySelectorAll('input:not([type=radio]), textarea, select')];
console.log(elementsconnect);
// fonctions
// déclarer la fonction valider
let connexion = (event) => {
    event.preventDefault();
    formconnect.querySelectorAll('.erreur').forEach(erreur => erreur.style.display="none");
    const empty = elementsconnect.filter(el => el.value === "");
    console.log(empty);
    if (empty.length === 0) form.submit();
    else {
        empty.forEach(el=>{
        const err=el.parentElement.lastElementChild;
        err.style.display='flex';
        })
    }
}
//events
//ecouteur d'evenement sur le bouton d'envoi ('click', valider)
formconnect.addEventListener('submit', connexion);