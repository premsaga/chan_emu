intMode = str2double(get_param('rfdcSim_5G/RF Data Converter','interpolationMode'));
srcSampleRate = 2560e6/intMode;

if intMode == 4
    tmpWave = load('soc_waveform_tx_data.mat');
    if isequal(tmpWave.waveformTxData, waveformTxData)
        waveformTxData = waveformTxData(1:2:end);
    end
    clear tmpWave;
elseif intMode == 8
    tmpWave = load('soc_waveform_tx_data.mat');
    if isequal(tmpWave.waveformTxData, waveformTxData)
        waveformTxData = waveformTxData(1:4:end);
    end
    clear tmpWave;
else
    load('soc_waveform_tx_data.mat');
end