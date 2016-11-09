node ('linux && cura') {
    stage('Prepare') {
        if(fileExists('build')) {
            dir 'build' {
                deleteDir()
            }
        }

        checkout scm

        sh 'mkdir -p build'
    }

    stage('Build') {
        dir 'build' {
            sh 'cmake ..'
            sh 'make'
        }
    }

    stage('Package') {
    }

    stage('Run Integration Tests') {
    }

    stage('Archive') {
    }
}
