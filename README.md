# Description
===========
Takipi Saltstack formula to install Takipi using Salt

[Takipi](https://app.takipi.com/)

#Requirements
===========
Java ( >=1.6 )

#Attributes
===========
Make sure you include your Takipi secret key as custom the salt/minion file :

```
grains:
  takipi:
      secret_key: "YOUR SECRET KEY"
      machine_name: ""
```
#Usage
===========
Takipi website: http://www.takipi.com

To connect Takipi to your Java process add the following JVM argument -agentlib:TakipiAgent before -classpath/-jar.
