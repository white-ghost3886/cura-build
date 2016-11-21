node ('linux && cura') {
    def src_dir = pwd()
    def build_dir = pwd(tmp: true)

    stage('Prepare') {
        step([$class: 'WsCleanup'])

        checkout scm
    }

    dir(build_dir) {
        stage('Build') {
            sh "cmake $src_dir -DCMAKE_PREFIX_PATH=/opt/ultimaker/cura-build-environment -DCMAKE_BUILD_TYPE=Release -DSIGN_PACKAGE=OFF -DBUILD_TESTING=ON"
            sh 'make'
        }

        stage('Package') {
            sh 'make package'
        }

        stage('Run Integration Tests') {
            sh 'make test'
        }

        stage('Archive') {
            archiveArtifacts '*.AppImage'
        }
    }
}
