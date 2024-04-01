function [h, p, ci, stats] = testerHypotheseTempsService(moyennes_temps_service, mu_theorique)
    
    [h, p, ci, stats] = ttest(moyennes_temps_service, mu_theorique);

    % Affichage des résultats
    fprintf('Test d''hypothèse pour une moyenne de temps de service de %d minutes.\n', mu_theorique);
    fprintf('Hypothèse nulle: la moyenne du temps de service est égale à %d minutes.\n', mu_theorique);
    fprintf('Résultat du test d''hypothèse: h = %d (1 = rejet de l''hypothèse nulle, 0 = non rejet).\n', h);
    fprintf('Valeur-p du test: p = %.4f.\n', p);
    fprintf('Moyenne observée des temps de service: %.2f minutes.\n', mean(moyennes_temps_service));
    fprintf('Écart-type observé des temps de service: %.2f minutes.\n', std(moyennes_temps_service));
end
