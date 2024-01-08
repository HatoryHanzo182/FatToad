function SendPraiseAndSuggestions()
{
    const message = document.getElementById('id-message-for-admin_toad').value;
    const token = localStorage.getItem('token');

    fetch('/FatToad/contact', {
        method: 'POST',
        headers:
        {
            'Content-Type': 'application/json',
            'TOKEN': `${token}`
        },
        body: JSON.stringify({ message: message })
    }).then(response =>
    {
        if (!response.ok)
            throw new Error(`HTTP error! Status: ${response.status}`);

        return response.text();
    }).then(data =>
    {
        try
        {
            const parsed_data = JSON.parse(data);

            alert(parsed_data.message);

            document.getElementById('id-message-for-admin_toad').value = " ";
        }
        catch (error) { console.error('Error parsing JSON:', error); }
    }).catch(error => { console.error('Error fetching data:', error); });

    event.preventDefault();
}

document.getElementById("id-button-send-message").addEventListener("click", SendPraiseAndSuggestions);