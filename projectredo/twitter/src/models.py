from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.dialects.postgresql import UUID
from sqlalchemy import ForeignKey
import uuid

db = SQLAlchemy()  # database adapter object

class Team(db.Model):
    __tablename__ = 'team'
    team_id = db.Column(UUID(as_uuid=True), primary_key=True, default= uuid.uuid4)  # Use UUID here
    team_name = db.Column(db.String(128), nullable=False)
    team_3pt_pct = db.Column(db.Float, nullable=False)
    team_ft_pct = db.Column(db.Float, nullable=False)
    team_fg_pct = db.Column(db.Float, nullable=False)
    players = db.relationship('Player', back_populates='team', lazy='dynamic')

    def __init__(self, team_name: str, team_3pt_pct: float, team_ft_pct: float, team_fg_pct: float, team_id: uuid.UUID = None):
        self.team_id = team_id
        self.team_name = team_name
        self.team_3pt_pct = team_3pt_pct
        self.team_ft_pct = team_ft_pct
        self.team_fg_pct = team_fg_pct

    def serialize(self):
        return {
            'team_id': str(self.team_id),
            'team_name': self.team_name,
            '3 point %': self.team_3pt_pct,
            'free throw %': self.team_ft_pct,
            'field goal %': self.team_fg_pct
        }

class Player(db.Model):
    __tablename__ = 'player'
    player_id = db.Column(db.String(128), primary_key=True)
    player_name = db.Column(db.String(128), nullable=False)
    player_3pt_pct = db.Column(db.Float, nullable=False)
    player_ft_pct = db.Column(db.Float, nullable=False)
    player_fg_pct = db.Column(db.Float, nullable=False)
    team_id = db.Column(UUID(as_uuid=True), ForeignKey('team.team_id'))  # Foreign key reference
    team = db.relationship('Team', back_populates='players')

    def __init__(self, player_id: str, player_name: str, player_3pt_pct: float, player_ft_pct: float, player_fg_pct: float, team_id: uuid.UUID):
        self.player_id = player_id
        self.player_name = player_name
        self.player_3pt_pct = player_3pt_pct
        self.player_ft_pct = player_ft_pct
        self.player_fg_pct = player_fg_pct
        self.team_id = team_id

    def serialize(self):
        return {
            'player_id': self.player_id,
            'player_name': self.player_name,
            '3 point %': self.player_3pt_pct,
            'free throw %': self.player_ft_pct,
            'field goal %': self.player_fg_pct,
            'team_id': str(self.team_id)
        }
