"""change team_id type to text

Revision ID: 6debda71be09
Revises: 38bfb5e57035
Create Date: 2024-08-09 01:33:57.921570

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '6debda71be09'
down_revision: Union[str, None] = '38bfb5e57035'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade():
    (
        """
        ALTER TABLE player
            ALTER COLUMN team_id SET TEXT
        );
        """
    )

def downgrade():
    (
        """
        ALTER TABLE player
            ALTER COLUMN team_id SET SERIAL
        );
        """
    )