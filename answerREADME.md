Oppgave 3:

For å sette opp en egen fork med banch protection må du slik at:
    Ingen kan pushe kode direkte på main branch
    Kode kan merges til main branch ved å lage en Pull request med minst en godkjenning
    Kode kan merges til main bare når feature branchen som pull requesten er basert på, er verifisert av GitHub Actions.
    
Må du:i

Gåt til din fork av dette repoet.
Gå til Settings/Branches og Se etter seksjonen "Branch Protection Rules".
Velg Add
Velg main Som branch
Velg require a pull request before merging
Velg Require status check to pass before merging
Velg Do not allow bypassing the above settings
I søkefeltet skriv inn teksten build som skal la deg velge "GitHub Actions".
Nå kan vi ikke Merge en pull request inn i Main uten at status sjekken er i orden. Det betyr at vår Workflow har kjørt OK.
