
DEL 2
Oppgave 3:

    For å sette opp en egen fork med banch protection med følgende krav:
    
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
            "Require a pull request before merging" for å tvinge at man må lage en pull request.
                "Require approvals" (Her er default 1, men det endres som ønskelig)
            "Require status check to pass before merging"
            "Do not allow bypassing the above settings"
        Finn søkefeltet og skriv inn "build" og sjekk at "GitHub Actions" kommer opp ved siden når du trykker enter.
        Nå kan vi ikke Merge en pull request inn i Main uten at status sjekken er i orden. Det betyr at vår Workflow har kjørt OK.


DEL 3
Oppgave 1:

    I første omgang måtte jeg legge til to GitHub secrets. Det er fordi docker.yml forsøkte å hente disse ut, men da det ikke var noen der kræsjet de. Jeg måtte da legge secretsene til under de titlene/secretsene
    som dockerfilen spurte etter. Først måtte jeg legge til brukernavnet under DOCKER_HUB_USERNAME og så en token under DOCKER_HUB_TOKEN og filen fikk da tilgang til dockerhub.
    
    Oppgave 2:
    
    Til å begynne med å sjekker jeg hvilken jdk som er brukt i Dockerfilen.
    Som nevnt i opgaveteksten står det 8 og de skal bruke 11. Jeg oppdaterer det da jdk (jdken? jdk'en?) til 11.
    Jeg sjekker så at det er samme jdk som i pom.xml filen. 
    mvn run... mvn does not run... mvn does not even crawl.
    
    Oppgave 3:
    Beskriv deretter med egne ord hva sensor må gjøre for å få sin fork til å laste opp container image til sitt eget ECR repo.
    Når sensor selv skal laste opp et container image til sitt eget ECR repo må sensor følge disse stegene.
        1. Lage security credentials på aws. Dette kan gjøres ved å først gå til IAM funksjonen i dashboardet.
            Deretter trykk på Access Management og så Users. Finn din bruker, det er sikkert enklest å søke. Klikk deg inn på brukeren
            og gå inn på Security Credentials. Trykk på Create Access Key og lagre ID og Key, jeg pleier å laste ned doc.
        2. Deretter går sensor inn på github reposetoriet og sin egen fork. Gå så inn på Settings -> Secrets -> Actions og 
            trykk på New Repository Secret. Først må skal vi lage en secret til aws ID. Vi skriver inn AWS_ACCESS_KEY_ID i name/navn og
            henter verdien til ID som vi fikk fra aws og lagret i forrige steg. Vi lagrer og gjør det samme en gang til men gir den navn/name 
            AWS_SECRET_ACCESS_KEY og verdien her er key fra aws.
        3. Kjør kommando "aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 244530008913.dkr.ecr.eu-west-1.amazonaws.com"
        4. Kjør kommandoene 
            "
            docker build -t <ditt tagnavn> .
            docker tag <ditt tagnavn> 244530008913.dkr.ecr.eu-west-1.amazonaws.com/<ditt ECR repo navn>
            docker push 244530008913.dkr.ecr.eu-west-1.amazonaws.com/<ditt ECR repo navn>
            "
            Her kan sensor selv velge tagnavn og ECR repo navn, men mine er shopifly og 1058.


Del 5:
Oppgave 1:
    