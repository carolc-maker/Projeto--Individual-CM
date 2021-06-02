var bntEntrar = document.querySelector("#entrar");
var bntCadastrar = document.querySelector("#cadastrar");

var body = document.querySelector("body");

bntEntrar.addEventListener("click", function(){
    body.className = "sign-in-js"
});

bntCadastrar.addEventListener("click", function(){
    body.className = "sign-up-js"
})