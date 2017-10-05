@echo OFF

SET RESOLVEBIN=%~1

netsh advfirewall firewall delete rule name="DaVinciResolve"
netsh advfirewall firewall add rule name="DaVinciResolve" profile=Private dir=in action=allow program="%RESOLVEBIN%Resolve.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveBmdpaneld"
netsh advfirewall firewall add rule name="DaVinciResolveBmdpaneld" profile=Private dir=in action=allow program="%RESOLVEBIN%bmdpaneld.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolvePanel"
netsh advfirewall firewall add rule name="DaVinciResolvePanel" profile=Private dir=in action=allow program="%RESOLVEBIN%DaVinciPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveJLCooper"
netsh advfirewall firewall add rule name="DaVinciResolveJLCooper" profile=Private dir=in action=allow program="%RESOLVEBIN%JLCooperPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveEuphonix"
netsh advfirewall firewall add rule name="DaVinciResolveEuphonix" profile=Private dir=in action=allow program="%RESOLVEBIN%EuphonixPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveTangent"
netsh advfirewall firewall add rule name="DaVinciResolveTangent" profile=Private dir=in action=allow program="%RESOLVEBIN%TangentPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveElements"
netsh advfirewall firewall add rule name="DaVinciResolveElements" profile=Private dir=in action=allow program="%RESOLVEBIN%ElementsPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveOxygen"
netsh advfirewall firewall add rule name="DaVinciResolveOxygen" profile=Private dir=in action=allow program="%RESOLVEBIN%OxygenPanelDaemon.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveDpdecoder"
netsh advfirewall firewall add rule name="DaVinciResolveDpdecoder" profile=Private dir=in action=allow program="%RESOLVEBIN%DPDecoder.exe" enable=yes

netsh advfirewall firewall delete rule name="DaVinciResolveQtdecoder"
netsh advfirewall firewall add rule name="DaVinciResolveQtdecoder" profile=Private dir=in action=allow program="%ProgramData%\Blackmagic Design\DaVinci Resolve\Support\QtDecoder\QTDecoder.exe" enable=yes
