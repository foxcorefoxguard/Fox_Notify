# Fox_Notify
Free Release will come with FoxCore Created by OutlawFoxTV | Lead Developer of FoxCore

# 🎯 Features
## 🔄 Dynamic Notification Limit: Configurable maximum number of visible notifications.
## ⏰ Custom Duration: Set how long each notification should last.
## 🎨 Smooth Animations: Clean sliding and fading animations.
## 🔗 Simple Exports: Easy to trigger from any resource.
## 📦 Positioning Options: Can be changed via the config.lua.


# Exports 
## Client-Side Example
exports['fox_notify']:Notify('Success!', 'Your action was successful.', 'success', 5000)

## Server-Side Example
exports['fox_notify']:ServerNotify(source, 'Welcome!', 'You have joined the server.', 'info', 5000)
