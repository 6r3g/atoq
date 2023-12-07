Write-Host "[#] AtoQ - AZERTY vers QWERTY" -ForegroundColor Blue
Write-Host "[#] Permet, par exemple, de convertir la frappe d'un mot de passe" -ForegroundColor Blue
Write-Host "[#] depuis un clavier AZERTY sur une console distante en QWERTY (US)" -ForegroundColor Blue
Write-Host "[!] Le cas particulier du ~ se fait comme ceci [Maj+²]" -ForegroundColor Red
Write-Host "[!] Le symbole € n'est pas géré, je vois pas comment...Bonne chance !" -ForegroundColor Red

$inp_str = $(Write-Host "[?] Chaîne de caractères à convertir : " -ForegroundColor Green -NoNewline;Read-Host)  

$convert_list = @(
    @{ 'az_char' = '`'; 'qw_char' = '²' },
    @{ 'az_char' = '1'; 'qw_char' = '&' },
    @{ 'az_char' = '2'; 'qw_char' = 'é' },
    @{ 'az_char' = '3'; 'qw_char' = '"' },
    @{ 'az_char' = '4'; 'qw_char' = '''' },
    @{ 'az_char' = '5'; 'qw_char' = '(' },
    @{ 'az_char' = '6'; 'qw_char' = '-' },
    @{ 'az_char' = '7'; 'qw_char' = 'è' },
    @{ 'az_char' = '8'; 'qw_char' = '_' },
    @{ 'az_char' = '9'; 'qw_char' = 'ç' },
    @{ 'az_char' = '0'; 'qw_char' = 'à' },
    @{ 'az_char' = '-'; 'qw_char' = ')' },
    @{ 'az_char' = '~'; 'qw_char' = '~' },
    @{ 'az_char' = '!'; 'qw_char' = '1' },
    @{ 'az_char' = '@'; 'qw_char' = '2' },
    @{ 'az_char' = '#'; 'qw_char' = '3' },
    @{ 'az_char' = '$'; 'qw_char' = '4' },
    @{ 'az_char' = '%'; 'qw_char' = '5' },
    @{ 'az_char' = '^'; 'qw_char' = '6' },
    @{ 'az_char' = '&'; 'qw_char' = '7' },
    @{ 'az_char' = '*'; 'qw_char' = '8' },
    @{ 'az_char' = '('; 'qw_char' = '9' },
    @{ 'az_char' = ')'; 'qw_char' = '0' },
    @{ 'az_char' = '_'; 'qw_char' = '°' },
    @{ 'az_char' = 'q'; 'qw_char' = 'a' },
    @{ 'az_char' = 'w'; 'qw_char' = 'z' },
    @{ 'az_char' = '['; 'qw_char' = '^' },
    @{ 'az_char' = ']'; 'qw_char' = '$' },
    @{ 'az_char' = 'a'; 'qw_char' = 'q' },
    @{ 'az_char' = ';'; 'qw_char' = 'm' },
    @{ 'az_char' = "'"; 'qw_char' = 'ù' },
    @{ 'az_char' = '\'; 'qw_char' = '*' },
    @{ 'az_char' = 'z'; 'qw_char' = 'w' },
    @{ 'az_char' = 'm'; 'qw_char' = ',' },
    @{ 'az_char' = ','; 'qw_char' = ';' },
    @{ 'az_char' = '.'; 'qw_char' = ':' },
    @{ 'az_char' = '/'; 'qw_char' = '!' },
    @{ 'az_char' = 'Q'; 'qw_char' = 'A' },
    @{ 'az_char' = 'W'; 'qw_char' = 'Z' },
    @{ 'az_char' = '{'; 'qw_char' = '¨' },
    @{ 'az_char' = '}'; 'qw_char' = '£' },
    @{ 'az_char' = 'A'; 'qw_char' = 'Q' },
    @{ 'az_char' = ':'; 'qw_char' = 'M' },
    @{ 'az_char' = '"'; 'qw_char' = '%' },
    @{ 'az_char' = '|'; 'qw_char' = 'µ' },
    @{ 'az_char' = 'Z'; 'qw_char' = 'W' },
    @{ 'az_char' = 'M'; 'qw_char' = '?' },
    @{ 'az_char' = '<'; 'qw_char' = '.' },
    @{ 'az_char' = '>'; 'qw_char' = '/' },
    @{ 'az_char' = '?'; 'qw_char' = '§' },
    @{ 'az_char' = '€'; 'qw_char' = '€' }
)

$converted_str = ""
$charlist = $inp_str.ToCharArray()
foreach ($char in $charlist) {
    $convert = $convert_list | Where-Object { $_.az_char -ceq $char }
    if ($convert) {
        $converted_str += $convert.qw_char
    } else {
        $converted_str += $char
    }
}

$banner_out = "[=] Tapes ça sur ton clavier (AZERTY) :"
Write-Host "$banner_out" -ForegroundColor Green -NoNewline; Write-Host "$converted_str"
