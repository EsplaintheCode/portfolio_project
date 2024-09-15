"""add player team_id

Revision ID: aa6035014403
Revises: 6e2d8edd7e80
Create Date: 2024-08-09 01:01:58.990976

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'aa6035014403'
down_revision: Union[str, None] = '6e2d8edd7e80'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade():
    op.execute(
        """
        ALTER TABLE player
        ADD COLUMN team_id SERIAL;
        """
    )

def downgrade():
    op.execute(
        """
        ALTER TABLE player
        DROP COLUMN team_id;

        """

        
    )