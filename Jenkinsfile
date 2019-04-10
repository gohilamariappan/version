#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Creation'){
         properties([parameters([choice(choices: ['ubuntu16', 'ubuntu18'], description: '', name: 'version')])])
        sh  '''if [ ${version}==ubuntu16 ]; then
               {
		cd /var/lib/jenkins/workspace/terraformmodules/awsubuntu16/
                
		    if [ ! -d ".terraform" ]; then
                    
                            terraform init
                     fi
	                    terraform plan  -var aws_access_key_id=${AWS_ACCESS_KEY_ID} -var aws_secret_access_key=${AWS_SECRET_ACCESS_KEY} -out=plan
	
                            terraform apply  plan
                            
                }
	  else
              {
		cd /var/lib/jenkins/workspace/terraformmodules/awsubuntu18/
		      if [ ! -d ".terraform" ]; then
                                   terraform init

                     fi
	                           terraform plan  -var aws_access_key_id=${AWS_ACCESS_KEY_ID} -var aws_secret_access_key=${AWS_SECRET_ACCESS_KEY} -out=plan
	
                                   terraform apply  plan
                                   
                }
		  
  fi'''  	
         
        }
}

