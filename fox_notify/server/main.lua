-- Server-side Trigger for Notifications
RegisterNetEvent('fox_notify:serverNotify')
AddEventHandler('fox_notify:serverNotify', function(target, title, message, type, duration)
    TriggerClientEvent('fox_notify:sendNotification', target, {
        title = title,
        message = message,
        type = type or 'info',
        duration = duration
    })
end)

-- Server Export for Notifications
exports('ServerNotify', function(target, title, message, type, duration)
    TriggerEvent('fox_notify:serverNotify', target, title, message, type, duration)
end)
