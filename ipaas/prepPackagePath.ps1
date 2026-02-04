param(
    [Parameter(Mandatory=$true)][string]$BasePath,
    [Parameter(Mandatory=$true)][string]$Entity,
    [string]$Project
)

Write-Host "BasePath : $BasePath"
Write-Host "Entity   : $Entity"
Write-Host "Project  : $Project"

# Validate entity
if ([string]::IsNullOrWhiteSpace($Entity)) {
    Write-Error "Please insert a valid entity parameter"
    exit 1
}

# Validate entity folder
$entityPath = Join-Path $BasePath $Entity

if (!(Test-Path $entityPath)) {
    Write-Error "Entity $Entity is not present in repository"
    exit 1
}

$finalResult = @()

# When project is NOT provided
if ([string]::IsNullOrWhiteSpace($Project)) {

    Get-ChildItem $entityPath -Directory | Where-Object {
        $_.Name -notlike "*varsub*"
    } | ForEach-Object {

        $pkgPath = Join-Path $_.FullName "assets\IS\Packages"
        $finalResult += $pkgPath
    }
}

# When entity == project
elseif ($Entity -eq $Project) {

    Get-ChildItem $entityPath -Directory | Where-Object {
        $_.Name -notlike "*varsub*"
    } | ForEach-Object {

        $pkgPath = Join-Path $_.FullName "assets\IS\Packages"
        $finalResult += $pkgPath
    }
}

# When project is specific
else {

    $projectPath = Join-Path $entityPath $Project

    if (!(Test-Path $projectPath)) {
        Write-Error "Project $Project does not exist for entity $Entity"
        exit 1
    }

    $finalResult += (Join-Path $projectPath "assets\IS\Packages")
    $finalResult += (Join-Path $entityPath "common\assets\IS\Packages")
}

# Convert to Jenkins property format
$sourcePackages = ($finalResult -join ";")

Write-Host "sourcePackages=$sourcePackages"

Add-Content -Path "jenkins.properties" -Value "sourcePackages=$sourcePackages"

Write-Host "jenkins.properties updated successfully"
