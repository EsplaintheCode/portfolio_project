"""add foreign constraint

Revision ID: 1cf4fd38ca07
Revises: 6debda71be09
Create Date: 2024-08-09 01:53:00.430736

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '1cf4fd38ca07'
down_revision: Union[str, None] = '6debda71be09'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade():
    (
        """
        ALTER TABLE player
        ADD CONSTRAINT fk_teamid_players
        FOREIGN KEY(team_id)
        REFERENCES team(teamid)
        );
        """
    )

def downgrade():
    (
        """
        ALTER TABLE player
        DROP CONSTRAINT fk_teamid_players
        );
        """
    )