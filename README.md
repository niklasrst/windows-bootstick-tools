# 🪟 Windows Bootstick Tools 🪟

This repo contains all necessary tools and files for an fully unattended Windows 11 installation media.

## Windows Media Creation Tool
Use the [Windows 11 media creation tool](https://www.microsoft.com/en-us/software-download/windows11) to create a Windows Media, then simply copy all those files and folders to a Windows Install Media stick and boot from it.

## Customizations

### Changing the language
``` xml
SetupUILanguage>
    <SetupUILanguage>
        <UILanguage>de-DE</UILanguage> <!-- replace de-DE -->
    </SetupUILanguage>
    <InputLocale>0407:00000407</InputLocale> <!-- replace 0407:00000407 -->
    <SystemLocale>de-DE</SystemLocale> <!-- replace de-DE -->
    <UILanguage>de-DE</UILanguage> <!-- replace de-DE -->
    <UILanguageFallback>de-DE</UILanguageFallback> <!-- replace de-DE -->
    <UserLocale>de-DE</UserLocale> <!-- replace de-DE -->
```

### Changing the Windows edition
``` xml
<InstallFrom>
    <!-- Windows edition -->
    <MetaData wcm:action="add">
        <Key>/IMAGE/NAME</Key>
        <Value>Windows 11 Pro</Value> <!-- replace Windows 11 Pro to matching edition name from wim file -->
    </MetaData>
</InstallFrom>
```

### Changing driver path
``` xml
<settings pass="offlineServicing">
        <component name="Microsoft-Windows-PnpCustomizationsNonWinPE" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <DriverPaths>
                <PathAndCredentials wcm:action="add" wcm:keyValue="1">
                    <Path>%configsetroot%\drivers</Path> <!-- Replace %configsetroot%\drivers with the part of your driver folder. Within this folder you need to create one folder per model which contains all drivers -->
                </PathAndCredentials>
            </DriverPaths>
        </component>
    </settings>
```

Add driverpacks to /drivers into a seperate folder per hardware modell. <br>
[DELL Drivers](https://www.dell.com/support/kbdoc/en-us/000124139/dell-command-deploy-driver-packs-for-enterprise-client-os-deployment) <br>
[LENOVO Enterprise Management (example)](https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/thinkpad-x-series-laptops/thinkpad-x13-type-20t2-20t3/downloads/driver-list/component?name=Enterprise%20Management&id=4A3CC709-438F-487D-8739-4104CE73D368)


## 🤝 Contributing

Before making your first contribution please see the following guidelines:
1. [Semantic Commit Messages](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716)
1. [Git Tutorials](https://www.youtube.com/playlist?list=PLu-nSsOS6FRIg52MWrd7C_qSnQp3ZoHwW)
1. [Create a PR from a pushed branch](https://learn.microsoft.com/en-us/azure/devops/repos/git/pull-requests?view=azure-devops&tabs=browser#from-a-pushed-branch)

---

Made with ❤️ by [Niklas Rast](https://github.com/niklasrst)
