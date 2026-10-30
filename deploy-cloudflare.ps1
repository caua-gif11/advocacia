$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

Write-Host 'Cloudflare Pages — publicação da demo'
$accountId = (Read-Host 'Cloudflare Account ID').Trim()
if (-not $accountId) { throw 'Account ID não informado.' }

$secureToken = Read-Host 'API token com Cloudflare Pages: Edit' -AsSecureString
$tokenPointer = [Runtime.InteropServices.Marshal]::SecureStringToGlobalAllocUnicode($secureToken)
try {
  $env:CLOUDFLARE_ACCOUNT_ID = $accountId
  $env:CLOUDFLARE_API_TOKEN = [Runtime.InteropServices.Marshal]::PtrToStringUni($tokenPointer)

  npm run build
  if ($LASTEXITCODE -ne 0) { throw 'O build falhou; a publicação foi cancelada.' }

  npx wrangler pages deploy dist
  if ($LASTEXITCODE -ne 0) { throw 'O deploy falhou; confira a mensagem do Wrangler.' }
}
finally {
  Remove-Item Env:CLOUDFLARE_API_TOKEN -ErrorAction SilentlyContinue
  Remove-Item Env:CLOUDFLARE_ACCOUNT_ID -ErrorAction SilentlyContinue
  [Runtime.InteropServices.Marshal]::ZeroFreeGlobalAllocUnicode($tokenPointer)
  $secureToken.Dispose()
}
