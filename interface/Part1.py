
import pandas as pd
import numpy as np
import datetime
import warnings
warnings.simplefilter('ignore')


def part1(pilot_id=33):
    aircrafts = pd.read_excel('Aircrafts.xlsx')
    flights = pd.read_excel('Flights.xlsx')

    data = flights[flights['pilot_id'] == pilot_id]
    data['date'] = pd.to_datetime(data['date'])
    data['date'] = data['date'].apply(lambda x: x.date())

    radar_s = data[data['date'] >= datetime.date(2017, 12, 1)]
    radar_s = radar_s.loc[:, 'p9':'p14']
    radar_s = radar_s.mean()

    radar_s.index = ['Физическое сост.',
                     'Психологическое сост.',
                     'Оценка за тренажеры',
                     'Скорость реакции',
                     'Спокойствие',
                     'Своевременность',
                     ]

    radar = pd.DataFrame()
    radar = radar.append(radar_s, ignore_index=True)

    months = ['январь', 'февраль', 'март', 'апрель', 'май', 'июнь',
              'июль', 'август', 'сентябрь', 'октябрь', 'ноябрь', 'декабрь']
    dates = [datetime.date(2016, 12, 31)] + [datetime.date(2017, i, 28) for i in range(1, 13)]

    trend = pd.DataFrame(np.zeros((1, 12)), columns=months, index=[0])
    trend_planes = pd.DataFrame(np.zeros((len(aircrafts), 12)),
                                columns=months,
                                index=aircrafts.index)
    trend_weather = pd.DataFrame(np.zeros((2, 12)),
                                 columns=months,
                                 index=[0, 1])
    trend_daytime = pd.DataFrame(np.zeros((2, 12)),
                                 columns=months,
                                 index=[0, 1])

    data = data[['date', 'aircraft_id', 'weather', 'time', 'p12', 'p13', 'p14']]

    for i in range(0, 12):
        md = data[(data['date'] > dates[i])  # month data
                  & (data['date'] <= dates[i + 1])]
        cols = ['p12', 'p13', 'p14']

        trend.iat[0, i] = md.mean()[cols].mean()
        trend.fillna(0, inplace=True)

        trend_planes.iloc[:, i] = md.groupby(by='aircraft_id').mean()[cols].mean(axis=1)
        trend_planes.fillna(0, inplace=True)

        trend_weather.iloc[:, i] = md.groupby(by='weather').mean()[cols].mean(axis=1)
        trend_weather.fillna(0, inplace=True)

        trend_daytime.iloc[:, i] = md.groupby(by='time').mean()[cols].mean(axis=1)
        trend_daytime.fillna(0, inplace=True)

    trend_weather.index = ['Хорошие', 'Плохие']
    trend_daytime.index = ['Светлое', 'Темное']

    pilot_id_df = pd.DataFrame([[pilot_id]], columns=['Id пилота'])

    writer = pd.ExcelWriter('data.xlsx')
    radar.to_excel(writer, sheet_name='Radar chart', index=False)
    trend.to_excel(writer, sheet_name='Trend_chart', index=False)
    trend_planes.to_excel(writer, sheet_name='Trend_chart with plane')
    trend_weather.to_excel(writer, sheet_name='Trend_chart with weather')
    trend_daytime.to_excel(writer, sheet_name='Trend_chart with daytime')
    pilot_id_df.to_excel(writer, sheet_name='Name', index=False)
    writer.save()


part1()
