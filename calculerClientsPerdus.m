function [clients_perdus_total, proportion_clients_perdus] = calculerClientsPerdus(file_attente_histoire, lambda, temps_simulation, N_simulations)
    % Initialisation du compteur de clients perdus
    clients_perdus_total = 0;
    
    % Parcourir l'historique de la file d'attente
    for n = 1:N_simulations
        for t = 1:temps_simulation
            % Si la station est occupée (file_attente > 0) à ce moment,
            % alors tous les arrivants sont perdus. Comme nous avons un historique
            % de file d'attente, nous supposons que si file_attente_histoire(n, t) > 0,
            % alors la station était occupée pendant cette minute.
            if file_attente_histoire(n, t) > 0
                % Le nombre de clients perdus est le nombre dans la file
                % moins un, car la station peut servir un client à ce moment.
                clients_perdus_total = clients_perdus_total + (file_attente_histoire(n, t) - 1);
            end
        end
    end
    
    % Calculer la proportion de clients perdus par rapport au nombre total de clients qui auraient pu arriver
    % sur toutes les simulations
    proportion_clients_perdus = clients_perdus_total / (lambda * temps_simulation * N_simulations / 60); % Conversion en heures si nécessaire
    % Affichage des résultats
    fprintf('Nombre total de clients perdus : %d\n', clients_perdus_total);
    fprintf('Proportion de clients perdus : %.4f\n', proportion_clients_perdus);
end
