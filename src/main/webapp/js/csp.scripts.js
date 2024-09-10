document.getElementById('chatButton').addEventListener('click', () => {
    document.getElementById('chatSection').classList.toggle('hidden');
});

document.getElementById('sendButton').addEventListener('click', () => {
    const chatInput = document.getElementById('chatInput');
    const chatMessages = document.getElementById('chatMessages')

    if(chatInput.value.trim() !== ""){
        const message = document.createElement('div');
        message.textContent = chatInput.value;
        chatMessages.appendChild(message)
        chatInput.value = "";
        chatMessages.scrollTop = chatMessages.scrollHeight;
    }
});

document.getElementById('chatInput').addEventListener('keypress', (e)=>{
    if(e.key === 'Enter'){
        document.getElementById('sendButton').click();
    }
});