pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo ' Récupération du code source...'
                checkout scm
            }
        }

        stage('Install Dépendances Node') {
            steps {
                echo ' Installation des dépendances...'
                sh 'npm install'
            }
        }

        stage('Tests') {
            steps {
                echo ' Exécution des tests...'
                sh 'npm test'
            }
        }

        stage('Build Docker') {
            steps {
                echo ' Construction de l\'image Docker...'
                sh 'docker build -t todo-app .'
            }
        }
    }

    post {
        success {
            echo ' Pipeline terminé avec SUCCESS !'
        }
        failure {
            echo ' Pipeline FAILED !'
        }
    }
}
