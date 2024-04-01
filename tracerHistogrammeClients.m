function tracerHistogrammeClients(N_clients_moyen)
    figure;
    histogram(N_clients_moyen);
    xlabel('Nombre moyen de clients servis par simulation');
    ylabel('Fréquence');
    title('Distribution du nombre moyen de clients servis');
end