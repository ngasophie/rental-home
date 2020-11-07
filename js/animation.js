window.onload = () =>{
    let nav = document.querySelector('.nav');
    let toggle = document.querySelector('.toggle-collapse');
    try{
        toggle.onclick = () =>{
            let navCollapse = document.querySelector('.nav.collapse');
            if(navCollapse!= null){
                nav.classList.remove('collapse')
            }
            else{
                nav.classList.add('collapse')
            }
        }
        let scrollTop = document.querySelector('.move-up span');
        $('.move-up span').click(function(){
            $('html, body').animate({scrollTop:0}, 2000);
        })
        // scrollTop.onclick = function() {
        //    document.documentElement.scrollTop=0;
        // }
    }
    catch(error){}
    let btnRegisterActive = document.querySelector('.btn-register.active');
    let btnLogin = document.querySelectorAll('.btn-login')
    let btnRegister = document.querySelectorAll('.btn-register');
    let userForm = document.getElementsByClassName('user-form');
    for(let i = 0; i< btnLogin.length;i++){
        try{
            btnLogin[i].addEventListener("click",function(){
                // btnLogin[i].classList.add('active');
                // btnRegister[i].classList.remove('active');
                    userForm[0].style.display="flex";
                    userForm[1].style.display='none'
                    console.log(2);
            });
        }
        catch(e){
            console.log(e)
        }
    }
    for(let i=0; i< btnRegister.length;i++){
        try{
            
            btnRegister[i].addEventListener('click',function(){
                // btnRegister[i].classList.add('active');
                // btnLogin[i].classList.remove('active');
                    userForm[1].style.display="flex";
                    userForm[0].style.display='none'
            })
        }
        catch(e){ console.log(e)}
    }
    try{
        if(btnRegisterActive!=null){
            userForm[0].style.display="flex";
            userForm[1].style.display='none'
        }
        else{
            userForm[1].style.display="flex";
            userForm[0].style.display='none'
        }
    }
    catch(error){}
    $("#close-1").click(function(){
        $("#myModal").hide();
        document.querySelector(".modal-backdrop").style.display= "none";
      });
    $("#close-2").click(function(){
        $("#myModal").hide();
        document.querySelector(".modal-backdrop").style.display= "none";
      });
}
AOS.init();