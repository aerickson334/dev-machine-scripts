#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# SDKs

choco install netfx-4.8-devpack -y -r --no-progress

choco install dotnetcore-sdk -y -r --no-progress

choco install nodejs.install -y -r --no-progress

# Tools

choco install awscli -y -r --no-progress

choco install awstools.powershell -y -r --no-progress

choco install git.install -y -r --no-progress

choco install gitversion.portable -y -r --no-progress

choco install nuget.commandline -y -r --no-progress

choco install poshgit -y -r --no-progress

choco install sql-server-express -y -r --no-progress

choco install sqllocaldb -y -r --no-progress

Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
if ($null -eq (Get-Module -Name SqlServer)) {
    Install-Module -Name SqlServer -Force -AllowClobber
}

choco install yarn -y -r --no-progress

# Applications

choco install azure-data-studio -y -r --no-progress

choco install chromium -y -r --no-progress

choco install fiddler -y -r --no-progress

choco install firefox -y -r --no-progress

choco install github-desktop -y -r --no-progress

choco install googlechrome -y -r --no-progress

choco install ilspy -y -r --no-progress

choco install notepadplusplus.install -y -r --no-progress

choco install paint.net -y -r --no-progress

choco install screentogif -y -r --no-progress

choco install sql-server-management-studio -y -r --no-progress

choco install vscode -y -r --no-progress

# choco install visualstudio2019professional -y -r --no-progress

# choco install visualstudio2019-workload-netcoretools -y -r --no-progress

# choco install visualstudio2019-workload-netweb -y -r --no-progress

# choco install visualstudio2019-workload-manageddesktop -y -r --no-progress

# choco install choco-upgrade-all-at --params "'/Time:21:00'" -y -r --no-progress

# Warnings
Write-Host -ForegroundColor DarkYellow '--- WARNINGS ---'
Write-Host -ForegroundColor DarkYellow 'There is a problem with the VS 2019 Professional Chocolatey Package. You must install this yourself.'

Read-Host 'Press ENTER to restart your computer'

Restart-Computer