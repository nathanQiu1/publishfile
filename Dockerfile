FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
RUN cd /usr/local/src

RUN mkdir blogcore

WORKDIR /usr/local/src/blogcore 

COPY *.* ./

EXPOSE 80 

CMD ["dotnet", "Blog.Core.dll"]