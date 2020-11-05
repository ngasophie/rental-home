window.onload = () =>{
    let nav = document.querySelector('.nav');
    let toggle = document.querySelector('.toggle-collapse');
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
AOS.init();