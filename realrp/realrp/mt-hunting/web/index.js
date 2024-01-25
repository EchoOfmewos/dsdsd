$('#body').hide()

window.addEventListener('message', function(event){
    var item = event.data;
    if(item.display === true) {
        $('#body').fadeIn()
        $('#image').fadeIn()
    } else if(item.display == false){
        $('#body').fadeOut()
        $('#image').fadeOut()
    }
})