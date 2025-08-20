set /p nome="NOME "
set /p email="EMAIL "
set /p token="TOKEN "
for /f "tokens=*" %%a in ('git config get --local remote.origin.url') do set url=%%a
set url=https://%token%:%token%@%url:~8%
git config set --local user.name "%nome%"
git config set --local user.email "%email%"
git config set --local remote.origin.url %url%