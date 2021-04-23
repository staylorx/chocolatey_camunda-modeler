# Camunda Modeler

## Where is the Binary?

This installs the Camunda Modeler into the `C:\ProgramData\chocolatey\lib\camunda-modeler` folder.

E.g., my executable is here: `"C:\ProgramData\chocolatey\lib\camunda-modeler\tools\Camunda Modeler.exe"`. From this I make a shortcut to my desktop. I haven't done this in Chocolatey yet because...

## Install Problems

Camunda changed how they "serve" their binaries, serving them from Google CDNs. So for instance, fetching the binary from here,

`https://downloads.camunda.cloud/release/camunda-modeler/4.7.0/camunda-modeler-4.7.0-win-x64.zip`

redirects to here,

```https://storage.googleapis.com/downloads-camunda-cloud-release/camunda-modeler/4.7.0/camunda-modeler-4.7.0-win-x64.zip?GoogleAccessId=download-center-reader%40camunda-public.iam.gserviceaccount.com&Expires=1619189019&Signature=V7ShSXmBHrJ1fFHhQnWFX%2FDQBKsi%2Fdk8N0R1vCdTnF56bGjPCY9RLmkOCYqQrxHMPMjDClE%2BbFaAbf0q41pWPAGGBacXjVrT7JyuJovThitQW%2Bc30E76wm1Rg4YNTx25ka8YJJwaFIBo6Y6j0aawXzDTY035MJBt4teNzF9cGzyvOr3AdMDCXV9h%2BRo9LDaOUVOBSyEM7OETezumOtVaF9mKachfqun9G2ACfnLO2GjHSOFoqC9FY6TcQIWNtxPcynjtHwFjvGE4FB8GOdOOONqZaINHqmbE3g2yhINweFStKr%2FJvh%2FdkQ2RRiKmt8InJVkCtCY7tQJG%2BECXK1DCZQ%3D%3D&response-content-disposition=inline```

So far so good, right?

Somewhere in all of this, Camunda's test servers don't recognize servers as having TLS 1.2. It's possible that Google and the rest of the chain have moved to TLS 1.3 _and_ the Chocolatey CI/CD server seems to have issues with that. So what that means is the deploy fails. And if you're familiar with Chocolatey there's very little recourse (that I know of... if you know how, let me know?).

It fails everytime on their servers for the last many versions I've tried to update. Works like a champ locally and in my test environment. I'm ranting, and it's extremely likely -- as in `P("I don't know what I'm doing") > 0.5 == random chance` -- that I'm doing it all wrong. If you know, won't you please post an issue (or a response to the issue #1).

### Manual Install

**TL;DR**
I can't get this through their CI/CD testing servers due to a TLS 1.2 error.

In the meantime you can install using this if you clone this repo and run from the cloned directory,

`choco install camunda-modeler -S .`