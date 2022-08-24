     # ###### #    # #    # # #    #  ####      ####  #####  ####  #####  #    # Ephemeral
     # #      ##   # #   #  # ##   # #         #        #   #    # #    # ##  ## Template
     # #####  # #  # ####   # # #  #  ####      ####    #   #    # #    # # ## # v0.0.7
     # #      #  # # #  #   # #  # #      #         #   #   #    # #####  #    #
#    # #      #   ## #   #  # #   ## #    #    #    #   #   #    # #   #  #    #
 ####  ###### #    # #    # # #    #  ####      ####    #    ####  #    # #    # MIT Licensed

FROM jenkins/jenkins:latest
# new way to install plugins in jcasc:
RUN jenkins-plugin-cli --plugins anchore-container-scanner ansible configuration-as-code docker-commons docker-java-api docker-plugin docker-workflow durable-task generic-webhook-trigger git git-client gitlab-plugin git-server kubernetes kubernetes-cli kubernetes-client-api kubernetes-credentials matrix-auth pipeline-aggregator-view pipeline-build-step pipeline-graph-analysis pipeline-input-step pipeline-milestone-step pipeline-model-api pipeline-model-definition pipeline-model-extensions pipeline-rest-api pipeline-stage-step pipeline-stage-view pipeline-utility-steps role-strategy workflow-aggregator workflow-api workflow-basic-steps workflow-cps workflow-cps-global-lib workflow-durable-task-step workflow-job workflow-multibranch workflow-scm-step
# old way to install plugins in jcasc:
#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY initialConfig.groovy /usr/share/jenkins/ref/init.groovy.d/initialConfigs.groovy
COPY jenkins.yml /usr/share/jenkins/ref/jenkins.yml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
