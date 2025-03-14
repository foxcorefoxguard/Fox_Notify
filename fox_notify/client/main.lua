-- Show Notification from Client
RegisterNetEvent('fox_notify:sendNotification')
AddEventHandler('fox_notify:sendNotification', function(data)
    SendNUIMessage({
        action = 'showNotification',
        title = data.title,
        message = data.message,
        type = data.type,
        duration = data.duration or FoxNotify.Duration
    })
end)

-- Export Function for Other Resources
exports('Notify', function(title, message, type, duration)
    TriggerEvent('fox_notify:sendNotification', {
        title = title,
        message = message,
        type = type or 'info',
        duration = duration
    })
end)
