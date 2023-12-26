function Inspector(email, password)
{
    const error_email_message = document.getElementById("id-error-email-message-signin");
    const error_password_message = document.getElementById("id-error-password-message-signin");

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

    if (password.trim() === "")
    {
        error_password_message.textContent = "You have an empty line!";
        return false;
    }
    else
        error_password_message.textContent = "";

    return true;
}

function SignIn()
{
    const form_data = {
        email: document.getElementById("id-email-signin").value,
        nickname:  " ",
        password: document.getElementById("id-password-signin").value,
        registration_date: null,
        last_activity_date: null,
        account_deletion_date: null
    };

    fetch("/FatToad/signin", {
        method: "POST",
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form_data)
    }).then(response =>
    {
        if (!response.ok)
            throw new Error(`HTTP error! Status: ${response.status}`);

        return response.json();
    }).then(answer =>
    {
        alert(answer.message);
        window.history.back();
    }).catch(error => { console.error("Error:", error); });
}

function SigninUser()
{
    event.preventDefault();

    const email = document.getElementById("id-email-signin").value;
    const password = document.getElementById("id-password-signin").value;

    if (Inspector(email, password))
    {
        SignIn();
    }
}

document.getElementById("id-button-signin").addEventListener("click", SigninUser);