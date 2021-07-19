def plugins = jenkins.model.Jenkins.instance.getPluginManager().getPlugins()
plugins.each {println "${it.getShortName()}:${it.getVersion()}:true:https://repos.proxy.l-3com.com:443/artifactory/jenkins-plugins/${it.getShortName()}/${it.getVersion()}/${it.getShortName()}.hpi"}
