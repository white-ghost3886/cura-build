node ('linux && cura') {
    stage('Prepare') {
        step([$class: 'WsCleanup'])

        checkout scm
    }

    stage('Build') {
        sh 'cmake . -DCMAKE_PREFIX_PATH=/opt/ultimaker/cura-build-environment -DCMAKE_BUILD_TYPE=Release -DSIGN_PACKAGE=OFF'
        sh 'make'
    }

    stage('Package') {
        sh 'make package'
    }

    stage('Run Integration Tests') {
    }

    stage('Archive') {
    }
}
