function tracerDistributionExponentielle(T_exponentielle)
    figure;
    histogram(T_exponentielle, 'Normalization', 'pdf');
    xlabel('Temps d''attente');
    ylabel('Densité de probabilité');
    title('Distribution exponentielle des temps d''attente');
end