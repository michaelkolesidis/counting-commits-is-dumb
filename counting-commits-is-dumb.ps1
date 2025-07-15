# while ($true) {
#     Add-Content -Path "counting-commits-is-dumb.ts" -Value "// Counting Commits is Dumb"
#     git add counting-commits-is-dumb.ts
#     git commit -m "counting commits is dumb"
#     git pull --rebase
#     git push
#     Start-Sleep -Seconds 2
# }

# while ($true) {
#     try {
#         # Stash any local changes to prevent rebase errors
#         git stash --include-untracked

#         # Pull latest commits and rebase
#         git pull --rebase

#         # Pop back stashed changes (will reapply the file edit)
#         git stash pop

#         # Append a line
#         Add-Content -Path "counting-commits-is-dumb.ts" -Value "// Counting Commits is Dumb"

#         # Add, commit, push
#         git add counting-commits-is-dumb.ts
#         git commit -m "counting commits is dumb"

#         # Push (no force – lets Git handle it properly)
#         git push

#     } catch {
#         Write-Host "⚠️ Error: $_"
#     }
# }