node {
  stage ('Checkout')
  {
    // Get the code from the Git repository
    checkout scm
  }

  stage('Git to ISPW Synchronization')
  {
	gitToIspwIntegration app: 'VKY1',
	branchMapping: '''*VKY1* => DEV1, per-branch''',
	connectionId: '91bae501-8b4d-4155-909d-2ad5aa9f3131',
	credentialsId: 'hfivky0',
	gitCredentialsId: 'hfivky0ghid',
	gitRepoUrl: 'https://github.com/VeliMattiYlitalo/IspwGitVKY1.git',
	runtimeConfig: 'ISPW',
	stream: 'FTSDEMO'
  }

  stage('Build ISPW assignment')
  {
	ispwOperation connectionId: '91bae501-8b4d-4155-909d-2ad5aa9f3131',
	credentialsId: 'HFIVKY0_CES',
	ispwAction: 'BuildAssignment',
	ispwRequestBody:  '''buildautomatically = true'''
  }
}