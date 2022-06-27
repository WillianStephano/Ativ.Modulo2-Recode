var btnPesquisa = document.querySelector(".btn_pesquisa")
var valorPesquisa = document.querySelector(".campo_pesquisa")

btnPesquisa.addEventListener('click', () => {
   var colecaoTitulos = document.querySelectorAll('.card-title')
   var colecaoCard = document.querySelectorAll('.card')
   
   if (validaCampo(valorPesquisa) == true) {
      for (let i = 0; i < colecaoTitulos.length; i++) {
         const titulo = colecaoTitulos[i];
         
         if (titulo.textContent.toLocaleLowerCase() !== valorPesquisa.value.toLocaleLowerCase()) {
            colecaoCard[i].parentElement.style.display = 'none'
         }
         else{
            colecaoCard[i].style.display = 'block'
            
         }
      }  
   }
})


valorPesquisa.addEventListener('input', function () {
   const colecaoCards = document.querySelectorAll('.card')
   if (valorPesquisa.value == '') {
      for (let i = 0; i < colecaoCards.length; i++) {
         const element = colecaoCards[i].parentElement;
         element.style.display = 'initial'
      }
   }
})

function validaCampo(valorPesquisa) {
   if (valorPesquisa.value == '' || isNaN(valorPesquisa.value) !== true) {
      window.alert('Erro: insira um texto no campo')
      return  false
   }else{
      return  true
   }
   
}