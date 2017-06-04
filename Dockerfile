FROM microsoft/windowsservercore
ADD VisualSVN-Server-3.6.1-x64.msi .
RUN dir
CMD echo Hello World!
RUN ["c:\\windows\\system32\\cmd.exe", "-c", "msiexec /i VisualSVN-Server-3.6.1-x64.msi /qb"]
RUN ["c:\\windows\\system32\\cmd.exe", "-c", "sc start VisualSVNServer"]

