function ShowSignUpContent()
{
    document.querySelector('.authorization-block').style.display = 'none';
    document.querySelector('.registration-block').style.display = 'block';
}

function ShowSignInContent()
{
    document.querySelector('.authorization-block').style.display = 'block';
    document.querySelector('.registration-block').style.display = 'none';
}

document.getElementById("id-sign-up").onclick = ShowSignUpContent;
document.getElementById("id-sign-in").onclick = ShowSignInContent;