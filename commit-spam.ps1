$commitCounter = 0

while ($true) {
    try {
        # Make empty commit
        git commit --allow-empty -m "counting commits is dumb" | Out-Null
        git push | Out-Null

        $commitCounter++
        Write-Host "✅ Commit #$commitCounter pushed at $(Get-Date -Format "HH:mm:ss.fff")"

        Start-Sleep -Milliseconds 100
    } catch {
        Write-Host "⚠️ Error: $_"
        Start-Sleep -Milliseconds 500
    }
}