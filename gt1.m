% Nhap gia tri ban dau
r = input("Nhap gia tri ban kinh r: ");
d = input("Nhap gia tri khoang cach d: ");

% Xac dinh goc quay
theta = 0:0.05:4*pi;

% Tinh toa do x, y
x = r * theta - d * sin(theta);
y = r - d * cos(theta);

% Ve do thi va thiet lap cac thuoc tinh
figure;
plot(x, y, 'LineWidth', 2); % Ve duong cong Trochoid ban dau
hold on;
xlabel('Truc Ox');
ylabel('Truc Oy');
grid on;
xlim([min(x) - 5, max(x) + 5]);
ylim([min(y) - 5, max(y) + 5]);
% Xac dinh tieu de va tung loai trochoid
if r < d
    title('Duong cong Prolate Trochoid (r < d)');
    legend('Duong cong Prolate Trochoid');
elseif r == d
    title('Duong cong Cycloid (r = d)');
    legend('Duong cong Cycloid');
else
    title('Duong cong Curate Trochoid (r > d)');
    legend('Duong cong Curate Trochoid');
end

% Tao diem di chuyen
movingPoint = plot(x(1), y(1), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'HandleVisibility', 'off'); 


% Vong lap tao su chuyen dong
for i = 1:2:length(theta)
    % Cap nhat vi tri cua diem di chuyen
    set(movingPoint, 'XData', x(i), 'YData', y(i));
    
    % Cap nhat do thi voi vi tri moi
    drawnow;
    
    % Tam dung tao hieu ung chuyen dong
    pause(0.05);
end

hold off;