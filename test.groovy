job("${new}") {
    scm {
        git('https://github.com/paulmaxx/shell-scripts.git')
    }
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        maven('-e clean test')
    }
}
