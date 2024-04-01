function final()
     % Simulation de la file d'attente et récupération des données
    [N_clients_moyen, N_queue_moyen, file_attente_histoire, temps_simulation, N_simulations, tailles_file_attente, moment_specifique, moyennes_temps_service, T_exponentielle,lambda,mu] = simulerFileAttente();

    % Tracés de la simulation un par un
    tracerEvolutionMoyenne(file_attente_histoire, temps_simulation);
    pause; % Attend que l'utilisateur ferme le graphique ou appuie sur une touche pour continuer
    tracerHistogrammeClients(N_clients_moyen);
    pause;
    tracerDistributionFile(moment_specifique, tailles_file_attente);
    pause;
    tracerTCL(moyennes_temps_service);
    pause;
    tracerDistributionExponentielle(T_exponentielle);
    pause;
    tracerLoiNormaleTheorique();
    pause;
    [h, p, ci, stats] = testerHypotheseTempsService(moyennes_temps_service, 2);
    [clients_perdus_total, proportion_clients_perdus] = calculerClientsPerdus(file_attente_histoire, lambda, temps_simulation, N_simulations);
    verifierEgaliteNqN(N_clients_moyen, N_queue_moyen);
    
end

















