function tracerEvolutionMoyenne(file_attente_histoire, temps_simulation)
    figure;
    plot(1:temps_simulation, mean(file_attente_histoire));
    xlabel('Temps (minutes)');
    title('Évolution moyenne de la taille de la file d''attente au fil du temps');
end