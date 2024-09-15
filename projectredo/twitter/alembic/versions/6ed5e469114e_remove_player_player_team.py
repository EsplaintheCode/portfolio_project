"""remove player player_team

Revision ID: 6ed5e469114e
Revises: aa6035014403
Create Date: 2024-08-09 01:04:51.550333

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '6ed5e469114e'
down_revision: Union[str, None] = 'aa6035014403'
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