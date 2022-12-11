DEL 2
    Oppgave 3:
    
    For å sette opp en egen fork med banch protection må du slik at:
        Ingen kan pushe kode direkte på main branch
        Kode kan merges til main branch ved å lage en Pull request med minst en godkjenning
        Kode kan merges til main bare når feature branchen som pull requesten er basert på, er verifisert av GitHub Actions.
        
    Må du:
    
    Gå til din fork av dette repoet.
    Gå til Settings og så Branches.
    Se etter seksjonen "Branch Protection Rules", ligger som alternativ nummer to for meg.
    Trykk på "Add"
    Skriv inn "main" som branch name
    Huk av 
        "require a pull request before merging" for å tvinge at man må lage en pull request.
        "Require status check to pass before merging"
        "Do not allow bypassing the above settings"
    Finn søkefeltet og skriv inn "build" og sjekk at "GitHub Actions" kommer opp ved siden når du trykker enter.
    Nå kan vi ikke Merge en pull request inn i Main uten at status sjekken er i orden. Det betyr at vår Workflow har kjørt OK.

DEL 3
    Oppgave 1:
    
    I første omgang måtte jeg legge til to GitHub secrets. Det er fordi docker.yml forsøkte å hente disse ut, men da det ikke var noen der kræsjet de. Jeg måtte da legge secretsene til under de titlene/secretsene
    som dockerfilen spurte etter. Først måtte jeg legge til brukernavnet under DOCKER_HUB_USERNAME og så en token under DOCKER_HUB_TOKEN og filen fikk da tilgang til dockerhub.
    
    Oppgave 2:
    
    Oppdaterer jdk i Dockerfile og 