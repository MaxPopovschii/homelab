# Homelab

Questo repository contiene la configurazione e gli script necessari per gestire un ambiente homelab completo, con supporto a CI/CD, infrastruttura di base, Kubernetes e monitoring tramite Docker Compose e script di setup.

## Struttura del repository

- `cicd/`: Configurazione Docker Compose per pipeline CI/CD.
- `infrastructure/`: Infrastruttura di base, Docker Compose e script di setup.
- `kubernetes/`: File di configurazione e script per il setup di Kubernetes e monitoring.
- `monitoring/`: Configurazione Docker Compose per il monitoring.

## Prerequisiti

- [Docker](https://docs.docker.com/get-docker/) e [Docker Compose](https://docs.docker.com/compose/install/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [bash](https://www.gnu.org/software/bash/)
- Permessi di amministratore (sudo)

## Installazione

### 1. Clona il repository

```bash
git clone <URL_DEL_REPO>
cd homelab
```

### 2. Setup dell'infrastruttura di base

Vai nella cartella `infrastructure` ed esegui lo script di setup:

```bash
cd infrastructure
chmod +x setup.sh
./setup.sh
```

Per avviare i servizi di base:

```bash
docker-compose up -d
```

### 3. Setup CI/CD

Vai nella cartella `cicd` e avvia i servizi:

```bash
cd ../cicd
docker-compose -f docker-compose_cicd.yml up -d
```

### 4. Setup Monitoring

Vai nella cartella `monitoring` e avvia i servizi:

```bash
cd ../monitoring
docker-compose -f docker-compose_monitor.yml up -d
```

### 5. Setup Kubernetes e Monitoring

Vai nella cartella `kubernetes` ed esegui lo script di setup:

```bash
cd ../kubernetes
chmod +x setup_k8s.sh
./setup_k8s.sh
```

Applica la configurazione di monitoring su Kubernetes:

```bash
kubectl apply -f monitoring.yaml
```

## Note

- Personalizza i file di configurazione secondo le tue esigenze.
- Assicurati che le porte utilizzate nei vari servizi non siano in conflitto.
- Per fermare tutti i servizi, usa `docker-compose down` nelle rispettive cartelle.

## Supporto
Per problemi o domande, apri una issue su questo repository.
