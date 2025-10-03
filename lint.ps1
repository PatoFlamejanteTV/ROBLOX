# lint.ps1
Write-Host "Linting C++/C"
clang-tidy **/*.cpp -- -Iinclude
clang-format -i **/*.cpp **/*.hpp
clang-tidy **/*.c -- -Iinclude
clang-format -i **/*.c **/*.h

Write-Host "Linting HTML"
prettier --check "**/*.html"

Write-Host "Linting JS"
eslint "**/*.js"
prettier --check "**/*.js"

Write-Host "Linting Python"
ruff check .

Write-Host "Linting other files"
prettier --check "**/*.{json,yml,yaml,md}"
