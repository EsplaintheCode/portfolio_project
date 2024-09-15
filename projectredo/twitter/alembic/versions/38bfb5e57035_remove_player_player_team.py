"""remove player player_team

Revision ID: 38bfb5e57035
Revises: 6ed5e469114e
Create Date: 2024-08-09 01:21:15.027409

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '38bfb5e57035'
down_revision: Union[str, None] = '6ed5e469114e'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade():
    (
        """
        ALTER TABLE player
        DROP COLUMN player_team
        );
        """
    )

def downgrade():
    (
        """
        ALTER TABLE player
        ADD COLUMN player_team
        );
        """
    )
