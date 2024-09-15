"""create player

Revision ID: f8ab74731688
Revises: 
Create Date: 2024-08-08 03:58:31.154974

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'f8ab74731688'
down_revision: Union[str, None] = None
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.execute(
        """
        CREATE TABLE player(
            player_id TEXT,
            team_id UUID,
            player_teamid TEXT,
            player_name TEXT NOT NULL,
            player_3pt_pct FLOAT NOT NULL,
            player_ft_pct FLOAT NOT NULL,
            player_fg_pct FLOAT NOT NULL
        );
        """
    )


def downgrade() -> None:
    op.execute(
        """
        DROP TABLE player;
        """
    )