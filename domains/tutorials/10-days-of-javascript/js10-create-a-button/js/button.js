var clickButton = document.createElement('button');
clickButton.id = 'btn';
clickButton.innerHTML = 0;
document.body.appendChild(clickButton);
var i = 0;
var btn = document.getElementById('btn');
btn.onclick = function() {
    i++;
    btn.innerHTML = i;
};