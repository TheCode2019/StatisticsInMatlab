function tracerDistributionFile(moment_specifique, tailles_file_attente)
    figure;
    histogram(tailles_file_attente);
    xlabel('Taille de la file d''attente');
    ylabel('Fréquence');
    title(['Distribution de la taille de la file d''attente après ', num2str(moment_specifique/60), ' heures']);
end