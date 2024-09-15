from sqlalchemy import create_engine, Column, String, Float
from sqlalchemy.orm import sessionmaker, declarative_base
import requests, time
from flask_sqlalchemy import SQLAlchemy
from twitter.src.models import Player, Team
from twitter.src import create_app

#----- Connect to Postgres database
db = SQLAlchemy()
engine = create_engine('postgresql://postgres@pg:5432/wba')
Session = sessionmaker(bind=engine)


#-- List of Team IDs  to iterate on
team_ids = [
    '171b097d-01db-4ae8-9d56-035689402ec6', '5d70a9af-8c2b-4aec-9e68-9acc6ddb93e4', 
    'f073a15f-0486-4179-b0a3-dfd0294eb595', '08ed8274-e29f-4248-bc2e-83cc8ed18d75', 
    '6f017f37-be96-4bdc-b6d3-0a0429c72e89', '0699edf3-5993-4182-b9b4-ec935cbd4fcc', 
    '5c0d47fe-8539-47b0-9f36-d0b3609ca89b', '3c409388-ab73-4c7f-953d-3a71062240f6', 
    '0a5ad38d-2fe3-43ba-894b-1ba3d5042ea9', 'd6a012ed-84aa-48d3-8265-2d3f3ff2199a', 
    'a015b02d-845c-40c1-8ef4-844984f47e4d', '5f0b5caf-708b-4300-92f2-53b51d83ec06'
]

# Initialize Flask app and SQLAlchemy
app = create_app()
app.app_context().push()

print(" --- Entering Megaparser ---")

team_object = []
player_object = []

for x in team_ids:
    response = requests.get(f"http://api.sportradar.com/wnba/trial/v8/en/seasons/2024/REG/teams/{x}/statistics.json?api_key=SfGQAVfaWU2Y3egrMNTUE4MQIS3muKnN3txCxurP")

    data=response.json()

#------ Appending Team Statistics to Object
    print(f"----- {data['name']}----")

    v = Team(
            team_name = data['name'],
            team_id = data['id'],
            team_3pt_pct = data['own_record']['total']['three_points_pct'],
            team_ft_pct = data['own_record']['total']['free_throws_pct'],
            team_fg_pct = data['own_record']['total']['field_goals_pct']
    )
    team_object.append(v)

#------ Appending Player Statistics to Object

    for y in range(len(data['players'])):
        print(data['players'][y]['full_name'])

        p = Player(
           player_name = data['players'][y]['full_name'],
            # player_team = data['name'],
           team_id = data['id'],
            player_id = data['players'][y]['id'],
            player_3pt_pct = data['players'][y]['total']['three_points_pct'],
            player_ft_pct = data['players'][y]['total']['free_throws_pct'],
            player_fg_pct = data['players'][y]['total']['field_goals_pct']
            )
        player_object.append(p)

    time.sleep(5) #----- pause in seconds on request due to API rate limits

#-- Bulk Upload to Database
session = Session()
session.bulk_save_objects(player_object)
session.bulk_save_objects(team_object)
session.commit()

print("----  Bulk Upload Complete ----")
