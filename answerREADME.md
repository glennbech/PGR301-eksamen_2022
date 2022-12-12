## DEL 1
Oppgave 1:
    Hva er utfordringene med dagens systemutviklingsprosess - og hvordan vil innføring av DevOps kunne være med på å løse
    disse? Hvilke DevOps prinsipper blir brutt?

    Dagens systemutviklingsprosesser krever i større grad en kontinuerlig og relativt hurtige eller faste oppdateringer av produktene dine. I tillegg får og 
    finner man nye teknologiske faktorer som bugs, exploits og nyere teknologiske fremskritt som også må innkorporeres eller utvikles rundt. 
    DevOps tillater oss å gjøre akkurat dette på en strukturert og kontinerlig måte som også gir oss en god oversikt.
    Resultatene kommer dog selvsagt an på hvordan man implementerer det.

    DevOps kan være spesielt hjelpsomt med å sette grunnverket for at alle utviklerne jobber med å utvikle fra like kodebaser. Her mener vi at alle "puller" samme versjon 
    og jobber ut ifra denne så alle kan utvikle og implementere fuksjoner som de vet fungerer i forhold til andre hva andre utvikler gitt at begge fungerer i grunnnprosjektet.
    DevOps gjør også at man tydligere kan streamline prosessene utviklerne bruker fra de utvikler til produktet levers gjennom autmasjon. 
    Det kan være tester, peer reviews og mye annet, og vet å autmoatisere det vil bedriftene kunne spare mye arbeidskraft.

    Hvis man derimot ikke har en god implementasjon av DevOps og man for eksempel ikke gjør automatiseringen på en god og fullstendig måte vil man risikere å 
    tape mye tid på å måtte fikse feil som renner gjennom. Her kan arbeid i forskjellige versjoner, for høy tillit til tester og mer være problemer man kommer ut for.
    Her er det viktig å kommunisere mede team og kunde om hva som er relevant og detaljer rundt autmatiseringen.
    
    Et annet prinsipp en del bedrifter bryter er prinsippet om end to end responsibility. Dette prinsippet handler om at utviklerne er ansvarlige for produktet fra ide og 
    fram til det når end of life. Det betyr at samme gruppe skal opprettholde produktet og ha god kommunikasjon fra dev til ops om hvordan produktet fungerer og mulige nye krav.
    
    Et siste prinsippet som kanskje blir mest brutt er continous deployment. Her er det mye "legacy" som kanskje ligger igjen eller fra tidligere eller produkter man føler seg
    fornøyd og ferdig med. Verden, særlig i vår levetid, beveger seg så fort framover at for å holde tritt med all tekonolgi som er og vil komme må man holde koden sin klar.
    Plutslig ligger man noe som føles "irreversibelt langt bak" og har ikke sjanse til å gjøre produktet sitt velfungerende lenger.

Oppgave 2:
    En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig, og samtidig forsøke å legge på mer kontroll og QA. 
    Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan være en bedre tilnærming?

    Problemet med dette vil blant annet være at med færre releaser, ofte vil kreve støre releaser. Hvis man da til slutt må rulle tilbake vil man miste mer fordi man kanskje
    ikke har en god recent release som holder de funksjonalitetene man vil ha med eller at disse funksjonalitetene kanskje ikke kan overføres direkte fordi de ikke er testet mot
    gamle release. En annen side av dette er at ved å ha mindre og oftere releaser tidligere vil synliggjøre feil. DEt å finne feil tidligere vil gjøre at man ikke bygger 
    på- og avhengigjør nyere kode av kode som ikke vil fungere. 
    Det er et fint sitat som jeg dessverre ikke vet hvem som har sagt men det sto ‘Release small, fail fast’. Dette er også det jeg vil si er en bedre tilnærming. 
    Finn feil fort så du kan fikse dem fort.

Oppgave 3:
    Teamet overleverer kode til en annen avdelng som har ansvar for drift - hva er utfordringen med dette ut ifra et DevOps perspektiv, 
    og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?
    
    Når man fordeler ansvaret for et produkt mellom developers og operations vil man kunne støtte på en del problemer. Et ekstra ledd vil kunne gjøre kommunikasjonen fra kunde
    til dev lengre og mer tidkrevende. Dette er noe vi ikke ønsker da vi helst vi har en rask og kundeorientert release. Et ekstra ledd i midten skaper et ekstra kontaktpunkt og mulighet 
    for flere misforståelser.
    Det å gi fra seg og å overta et et prosjekt kan skade følelsen av eierskap til produktet og man vil kanskje ikke ha samme forståelse eller planer rundt produktet.
    Med andre ord vil begge parter kanskje måtte seg inn i et helt nye prosjekter man ikke er så godt kjent med over å ha en bedre forståelse for et.
    Et team som drifter og utvikler vil også ha fordelen av å kunne kommunisere bedre seg imellom da alle har mer oversikt over alle, samt bedre informasjon når de skal kommuniserse
    med kunder.
    De vil også ha kortesete vei når det kommer til å fikse feil som skulle oppstå.

Oppgave 4:
    Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å redusere eller fjerne risiko ved hyppige leveraner.

    Hyppige releaser vil by på flere feil, men som nevnt over "Release small, fail fast" og positive grunner er overnevnt. Derimot kan vi kan vi legge inn funksjoner for 
    å hjelpe oss med å filtrere ut en del feil. Til å beynnge med kan vi legge inn automatiserte tester. Disse testene brukes til å sjekke at vi får eller ungår et gitt utfall.
    Testene brukes ofte i kombinasjon med github actions eller tilsvarende. Hvis man setter det opp riktig vil man her kunne bli stoppe fra å pushe koden sin hvis testene ikke 
    består. Det er derimot ikke alltid sånn at testene dekker alt og for å sikre seg enda mer kan man be om og tvinge peer reviews. i fohold til denne oppgaven jobber vi med
    peer reviews under tvang. Her kan man sette det opp sånn at man må ha minst 1, eller flere om man ønsker, peer reviews der peer bekrefter at de har lest og mener
    koden din gir mening, før du får lage en push. Hvis du har implementert dette pleier du også å allerde pushe til en egen branch og så merge for å unngå konflikter i main,
    samt unngå at kode blir pushet direkte og kanskje kræsjer produksjonen. Man pleier da å protecte main beanchen, man kan protecte andre beanches også, slik at man ikke kan 
    pushe til amin direkte og må ta alt gjennom pull requests. Pull requests er forebyggende fordi de ofte har integrert at alle de tidligere nevnte stegene må være godkjent
    før pullen blir opprettet. Her må også selve requesten godkjennes før en merge kan skje så man ikke merger uten at noen sjekker hva du faktsik merger.
    
    
    



## DEL 2
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


## DEL 3
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


## Del 5:
Oppgave 1:
    Forklar med egne ord. Hva er årsaken til dette problemet? Hvorfor forsøker Terraform å opprette en bucket, når den allerede eksisterer?

    Terraform forsøker å opprette en ny bucket fordi det ikke er oppgitt noen bucket som terraform skal bruke i provider filen. Fordi det ikke er oppgitt noen bucket antar terraform
    at den skal forsøke å lage en ny fra skratch. 
    