import pandas as pd
import soundfile as sf

def convert_to_wav(path):
    df = pd.read_csv(path)
    data = df.values.astype('int16')
    sf.write(path+'.wav', data, sample_rate_hz)

sample_rate_hz = 48000
convert_to_wav("engine.csv")