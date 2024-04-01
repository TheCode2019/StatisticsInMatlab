function verifierEgaliteNqN(N_clients_moyen, N_queue_moyen)
    % Calculer la différence entre le nombre moyen de clients en file d'attente et le nombre moyen de clients servis
    difference = N_queue_moyen - N_clients_moyen ;
    
    % Vérifier si la différence est proche de zéro
    for y=0:0
    if mean(abs(difference)) < 0.1
        fprintf('L''égalité N = N_q - 1 est vérifiée en moyenne.\n');
    else
        fprintf('L''égalité N = N_q - 1 n''est pas vérifiée. L''écart moyen est de : %.2f\n', difference);
    end
    end
end
