function [N_clients_moyen, N_queue_moyen, file_attente_histoire, temps_simulation, N_simulations, tailles_file_attente, moment_specifique, moyennes_temps_service, T_exponentielle,lambda,mu] = simulerFileAttente()
    lambda = 15;
    mu = 2;
    temps_simulation = 350;
    N_simulations = 15000;
    
    file_attente_histoire = zeros(N_simulations, temps_simulation);
    
    for n = 1:N_simulations
        file_attente = 0;
        for t = 1:temps_simulation
            arrivees = poissrnd(lambda/60);
            file_attente = max(file_attente + arrivees - 1, 0);
            file_attente_histoire(n, t) = file_attente;
        end
    end
    
    N_clients_moyen = mean(file_attente_histoire, 2);
    N_queue_moyen = mean(file_attente_histoire(:));
    N_queue_moyen_sans_service = mean(max(file_attente_histoire - 1, 0), 'all');
    moment_specifique = 2 * 60;
    tailles_file_attente = file_attente_histoire(:, moment_specifique);
    temps_service_clients = exprnd(mu, N_simulations, temps_simulation);
    moyennes_temps_service = mean(temps_service_clients, 2);
    U = rand(N_simulations, 1);
    T_exponentielle = -log(U) / lambda;
    a=abs(N_clients_moyen-N_queue_moyen);
    


end

