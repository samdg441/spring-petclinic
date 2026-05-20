#!groovy
pipeline {
    agent none
    stages {
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.9-eclipse-temurin-25'
                    reuseNode true
                }
            }
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                sh 'docker build -t <samdg441/spring-petclinic:gestion-udem-jenkins .'
            }
        }
        stage('Docker Push') {
            agent any
            steps {
                withCredentials([Principesamuel441* (credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                    sh "docker login -u samdg441 -p ${Principesamuel441*}"
                    sh 'docker push samdg441/spring-petclinic:gestion-udem-jenkins'
                }
            }
        }
    }
}