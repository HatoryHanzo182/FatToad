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

function СreateRegistrationDate()
{
    var current_date = new Date();
    return current_date.toISOString();
}

function Send()
{
    const formData = {
        email: document.getElementById("id-input-email").value,
        nickname: document.getElementById("id-input-nickname").value,
        password: document.getElementById("id-input-password").value,
        registration_date: СreateRegistrationDate(),
        last_activity_date: null,
        account_deletion_date: null
    };

    fetch("/FatToad/signin", {
        method: "POST",
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
    }).then(response =>
    {
        if (!response.ok)
            throw new Error(`HTTP error! Status: ${response.status}`);
        return response.json();
    }).catch(error => { console.error("Error:", error); });
}

function NeuenBenutzerSenden()
{
    event.preventDefault();

    const email = document.getElementById("id-input-email").value;
    const nickname = document.getElementById("id-input-nickname").value;
    const password = document.getElementById("id-input-password").value;

    if (Inspector(email, nickname, password))
    {
        Send();

        alert("👽 Welcome\nWe are glad that you are with us, we promise that we will not use your data for personal gain. "
            + "Just visit the site, share your impressions, communicate, and become our critic in the gaming industry.");

        location.reload();
    }
}

function Inspector(email, nickname, password)
{
    const error_email_message = document.getElementById("id-error-email-message");
    const error_nickname_message = document.getElementById("id-error-nickname-message");
    const error_password_message = document.getElementById("id-error-password-message");

    if (email.trim() === "")
    {
        error_email_message.textContent = "You have an empty line!";
        return false;
    }
    else if (!email.includes("@gmail.com"))
    {
        error_email_message.textContent = "This doesn't look like mail";
        return false;
    }
    else
        error_email_message.textContent = "";

    if (nickname.trim() === "")
    {
        error_nickname_message.textContent = "You have an empty line!";
        return false;
    }
    else
        error_nickname_message.textContent = "";

    if (password.trim() === "")
    {
        error_password_message.textContent = "You have an empty line!";
        return false;
    }
    else if(password.length < 6)
    {
        error_password_message.textContent = "The password has less than 6 characters!"
        return false;
    }
    else
        error_nickname_message.textContent = "";

    return true;
}

document.getElementById("id-sign-up").onclick = ShowSignUpContent;
document.getElementById("id-sign-in").onclick = ShowSignInContent;
document.getElementById("id-signup-button").addEventListener("click", NeuenBenutzerSenden);
