function tracerTCL(moyennes_temps_service)
    figure;
    histogram(moyennes_temps_service);
    xlabel('Moyenne du temps de service');
    ylabel('Fréquence');
    title('Application du théorème central limite au temps de service');
end