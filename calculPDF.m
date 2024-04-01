function [x, y] = calculPDF(mu, sigma)
    x = linspace(mu - 4*sigma, mu + 4*sigma, 1000);
    y = normpdf(x, mu, sigma);
    % Définition de l'intervalle des valeurs et calcul de la PDF
    % Calcul des bins et des centres des bins
    bins = linspace(mu - 4*sigma, mu + 4*sigma, 30);
    bin_centers = 0.5 * (bins(1:end-1) + bins(2:end));

    % Calcul de la PDF pour les centres des bins
    y_bins = normpdf(bin_centers, mu, sigma);

    % Calcul de la largeur des bins et normalisation des hauteurs
    bin_width = bins(2) - bins(1);
    normalized_heights = y_bins * bin_width;

    % Création de l'histogramme basé sur la PDF
    bar(bin_centers, normalized_heights, 1, 'blue');

    % Configuration de l'affichage
    title('Histogramme basé sur la PDF d''une loi normale');
    xlabel('Valeur');
    ylabel('Probabilité');
end