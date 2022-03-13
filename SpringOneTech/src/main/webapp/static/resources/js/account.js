
var input = document.getElementById('name');
input.oninvalid = function(event) {
    event.target.setCustomValidity('Vui lòng điền thông tin');
}

