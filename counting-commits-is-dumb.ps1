# while ($true) {
#     Add-Content -Path "counting-commits-is-dumb.ts" -Value "// Counting Commits is Dumb"
#     git add counting-commits-is-dumb.ts
#     git commit -m "counting commits is dumb"
#     git pull --rebase
#     git push
#     Start-Sleep -Seconds 2
# }

while ($true) {
    try {
        Write-Host "`n🔄 Starting loop at $(Get-Date -Format "HH:mm:ss")"

        # Stash any changes (don't fail if nothing to stash)
        git stash --include-untracked | Out-Null

        # Pull with rebase
        git pull --rebase
        Write-Host "✅ Pulled with rebase"

        # Pop stash (may fail if there was nothing to stash)
        git stash pop | Out-Null

        # Append a line
        Add-Content -Path "counting-commits-is-dumb.ts" -Value "// Counting Commits is Dumb"
        Write-Host "✍️  Appended line to file"

        # Commit
        git add counting-commits-is-dumb.ts
        git commit -m "counting commits is dumb" | Out-Null
        Write-Host "✅ Committed"

        # Push
        git push
        Write-Host "🚀 Pushed to GitHub"

        # Optional delay
        Start-Sleep -Milliseconds 500

    } catch {
        Write-Host "⚠️ Error: $_"
        Start-Sleep -Seconds 1
    }
}