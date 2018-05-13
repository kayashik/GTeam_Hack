import pandas as pd
import numpy as np
import datetime

from sklearn.ensemble import GradientBoostingRegressor


def part2(weather, daytime, aircraft_id, duration, threshold = 65):
    flights = pd.read_excel('Flights.xlsx')
    pilots = pd.read_excel('Pilots.xlsx')

    weathers = {'Хорошие': 0, 'Плохие': 1}
    daytimes = {'Светлое': 0, 'Темное': 1}

    weather_id, daytime_id = weathers[weather], daytimes[daytime]

    X_train = flights[['aircraft_id', 'weather', 'time', 'duration', 'sex', 'age', 'p9', 'p10', 'p11']]
    y_train = flights[['p12', 'p13', 'p14']].mean(axis=1)

    model = GradientBoostingRegressor()
    model.fit(X_train, y_train)

    curdate = datetime.date(2018, 5, 13)

    X_test = pd.DataFrame(np.zeros((pilots.shape[0], X_train.shape[1])),
                          columns=X_train.columns,
                          index=pilots.index
                         )

    X_test['aircraft_id'] = aircraft_id
    X_test['weather'] = weather_id
    X_test['time'] = daytime_id
    X_test['duration'] = duration
    X_test['sex'] = pilots['sex']
    X_test['age'] = (curdate - pilots['bd'].apply(lambda x: x.date())).apply(lambda x: x.days) // 365

    for pilot_id in X_test.index:
        last_values = flights[flights['pilot_id'] == pilot_id][['p9', 'p10', 'p11']].iloc[-1, :]
        X_test.loc[pilot_id, ['p9', 'p10', 'p11']] = last_values

    predicted = model.predict(X_test)

    result = pd.DataFrame(columns=['predicted'], index=X_test.index)
    result['predicted'] = predicted
    result = result[result['predicted'] >= threshold]
    # result['predicted'] = result['predicted'].apply(lambda x: round(x, 1))
    # result = result.rename(columns={'predicted': 'Оценка'})

    text = ('Id пилота   Оценка\n'
            + '\n'.join(['{:9d}   {:.1f}'.format(i, result.at[i, 'predicted']) for i in result.index])
            )

    return text
