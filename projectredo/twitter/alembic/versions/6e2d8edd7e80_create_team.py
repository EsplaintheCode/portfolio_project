"""create team

Revision ID: 6e2d8edd7e80
Revises: f8ab74731688
Create Date: 2024-08-08 03:58:37.212698

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '6e2d8edd7e80'
down_revision: Union[str, None] = 'f8ab74731688'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.execute(
        """
        CREATE TABLE team(
            team_name TEXT PRIMARY KEY,
            team_id UUID,
            team_3pt_pct FLOAT NOT NULL,
            team_ft_pct FLOAT NOT NULL,
            team_fg_pct FLOAT NOT NULL
        );
        """
    )


def downgrade() -> None:
    op.execute(
        """
        DROP TABLE team;
        """
    )
