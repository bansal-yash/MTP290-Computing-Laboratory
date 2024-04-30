function plot_complex(c)
    x1 = real(c);
    y1 = imag(c);
    plot(x1, y1, 'o');
    xlim([0, 2*x1]);
    ylim([0, 2*y1]);
    xlabel("real axis");
    ylabel("imaginary axis");
    hold on;
    quiver(0, 0, x1, y1, 'off');
    hold off;
end