node ('linux') {
    stage 'Checkout'
        checkout scm

    stage 'Build'
        sh 'mkdir build'
        sh 'cd build'
        sh 'cmake ..'
        sh 'make'

    stage 'Package'


    stage 'Run Integration Tests'


    stage 'Archive'
}
