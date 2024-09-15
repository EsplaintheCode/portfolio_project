from flask import Blueprint, jsonify, abort, request
from uuid import UUID
from ..models import Team, db

bp = Blueprint('team', __name__, url_prefix='/team')


#------ READ: Get all team info

@bp.route('/<string:team_name>' , methods=['GET'])
def get_team(team_name):
        team = Team.query.filter_by(team_name=team_name).first_or_404()
        return jsonify(team.serialize())
 


#--- READ: Team names only
@bp.route('/all', methods=['GET'])
def show():
    team = Team.query.all()
    result = []
    for t in team:
        result.append(t.team_name)
    return jsonify(result)

#---- CREATE TEAM

@bp.route('', methods=['POST'])
def create():
    data = request.json

    # Check for required fields
    if not data or 'team_name' not in data or 'team_id' not in data:
        abort(400, description="Missing required fields")

    # Construct the new Team object
    try:
        new_team = Team(
            team_id= UUID(data['team_id']),
            team_name=data['team_name'],
            team_3pt_pct=float(data.get('team_3pt_pct', 0.0)),  # Default to 0.0 if not provided
            team_ft_pct=float(data.get('team_ft_pct', 0.0)),   
            team_fg_pct=float(data.get('team_fg_pct', 0.0))     
        )
    except ValueError as e:
        abort(400, description=f"Invalid data format")

    # Add to session and commit
    db.session.add(new_team)
    db.session.commit()

    # Return the created team details
    return jsonify(new_team.serialize())

#------ UPDATE  

@bp.route('/<string:team_name>' , methods=['PATCH'])
def patch_team(team_name):
        team = Team.query.filter_by(team_name=team_name).first_or_404()
        
        #---- verify data to be updated
        if team is None:
             abort(400, description = "No data provided")

        data = request.json
            
        ##---- update based on provided information in request
        if 'team_name' in data:
            team.team_name = data['team_name']

        if 'team_3pt_pct' in data:
            try:
                team.team_3pt_pct = float(data['team_3pt_pct'])
            except ValueError:
                abort(400, description="Invalid value for 3 point percent")
        if 'team_ft_pct' in data:
            try:
                team.team_ft_pct = float(data['team_ft_pct'])
            except ValueError:
                abort(400, description="Invalid value for free throw percent")
        if 'team_fg_pct' in data:
            try:
                team.team_fg_pct = float(data['team_fg_pct'])
            except ValueError:
                abort(400, description="Invalid value for field goal percent")

        #--- saves update to the database 
        db.session.commit()
        return jsonify(team.serialize())

#---- DELETE TEAM
@bp.route('/<string:team_name>', methods=['DELETE'])

def delete_team(team_name):

    team = Team.query.filter_by(team_name= team_name).first()

     #--check if team_id exists
    if team is None:
        abort(404, description="Team not found")

    #--- deletes
    db.session.delete(team)
    db.session.commit()

    return jsonify({"message": "Team deleted successfully"}), 200
