let notifications = [];

window.addEventListener('message', function (event) {
    if (event.data.action === 'showNotification') {
        displayNotification(event.data);
    }
});

function displayNotification(data) {
    if (notifications.length >= FoxNotify.MaxNotifications) {
        const oldNotification = notifications.shift();
        oldNotification.remove();
    }

    const container = document.getElementById('notification-container');
    const notification = document.createElement('div');
    notification.classList.add('notification', data.type);
    notification.innerHTML = `<strong>${data.title}</strong><br>${data.message}`;
    
    container.appendChild(notification);
    notifications.push(notification);

    setTimeout(() => {
        notification.style.animation = 'fadeOut 0.5s forwards';
        setTimeout(() => {
            notification.remove();
            notifications = notifications.filter(notif => notif !== notification);
        }, 500);
    }, data.duration);
}
