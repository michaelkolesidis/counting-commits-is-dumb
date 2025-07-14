while ($true) {
    Add-Content -Path "counting-commits-is-dumb.ts" -Value "// Counting Commits is Dumb"
    git add counting-commits-is-dumb.ts
    git commit -m "counting commits is dumb"
    git push
    Start-Sleep -Seconds 2
}