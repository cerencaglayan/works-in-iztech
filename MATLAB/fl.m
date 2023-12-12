% Fuzzy mantık sistemi oluştur
fis = mamfis;

% Giriş değişkenlerini tanımla
fis = addInput(fis, [0 10], 'Name', 'service');
fis = addInput(fis, [0 10], 'Name', 'food');
fis = addInput(fis, [0 10], 'Name', 'ambiance');
fis = addInput(fis, [0 10], 'Name', 'time');

% Çıkış değişkenini tanımla
fis = addOutput(fis, [0 10], 'Name', 'tip');

% Giriş terimlerini tanımla
fis = addMF(fis, 'service', 'poor', 'trimf', [0 0 5]);
fis = addMF(fis, 'service', 'average', 'trimf', [0 5 10]);
fis = addMF(fis, 'food', 'rubbish', 'trimf', [0 0 5]);
fis = addMF(fis, 'food', 'average', 'trimf', [0 5 10]);
fis = addMF(fis, 'ambiance', 'ordinary', 'trimf', [0 0 5]);
fis = addMF(fis, 'ambiance', 'good', 'trimf', [0 5 10]);
fis = addMF(fis, 'time', 'slow', 'trimf', [0 0 5]);
fis = addMF(fis, 'time', 'average', 'trimf', [0 5 10]);

% Çıkış terimlerini tanımla
fis = addMF(fis, 'tip', 'low', 'trimf', [0 0 5]);
fis = addMF(fis, 'tip', 'medium', 'trimf', [0 5 10]);

% Kuralları tanımla
fis = addRule(fis, 'If (service is poor) or (food is rubbish) or (ambiance is ordinary) or (time is slow) then tip is low');
fis = addRule(fis, 'If (service is average) or (food is average) or (ambiance is good) or (time is average) then tip is medium');

% Fuzzy mantık sistemini görselleştir
plotfis(fis);

% Giriş değerleri
inputValues = [8, 6, 7, 4];

% Fuzzy mantık sistemini değerlendir
outputValues = evalfis(fis, inputValues);

disp("Giriş Değerleri:");
disp(inputValues);
disp("Çıkış Değerleri:");
disp(outputValues);
