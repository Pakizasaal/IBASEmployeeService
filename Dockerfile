# Runtime image
FROM mcr.microsoft.com/dotnet/aspnet:9.0
WORKDIR /app
COPY --from=build /app/out .

EXPOSE 5000
ENV ASPNETCORE_HTTP_PORTS=5000

ENTRYPOINT ["dotnet", "IBASEmployeeService.dll"]