node ('linux && cura') {
    stage('Prepare') {
        step([$class: 'WsCleanup'])

        checkout scm
    }

    stage('Build') {
        sh 'cmake . -DCMAKE_PREFIX_PATH=/opt/ultimaker/cura-build-environment -DCMAKE_BUILD_TYPE=Release'
        sh 'make'
    }

    stage('Package') {
    }

    stage('Run Integration Tests') {
    }

    stage('Archive') {
    }
}
