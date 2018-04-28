class CreateSpotCueMatrix < ActiveRecord::Migration[5.2]

  def up

    # create the tablefunc extension
    execute <<-SQL
      CREATE EXTENSION tablefunc;
    SQL

    # create the spot_cue_submatrix view
    execute <<-SQL
      CREATE VIEW spot_cue_sub_matrix as SELECT * FROM crosstab('select spot_cues.id as spot_cue_id,spotlights.id as spotlight_id,spot_cues_spotlights.id as spot_cues_spotlight_id FROM spotlights, spot_cues, spot_cues_spotlights where spotlights.id = spot_cues_spotlights.spotlight_id AND spot_cues.id = spot_cues_spotlights.spot_cue_id') AS ct(spot_cue_id bigint, spotlight_id bigint, spot_cues_spotlight_id bigint);
    SQL

    # creat the spot_cue_matrix view
    execute <<-SQL
      CREATE VIEW spot_cue_matrix AS SELECT spot_cues.number as spot_cue_number,spot_cue_sub_matrix.spot_cue_id,spot_cue_sub_matrix.spotlight_id,spot_cue_sub_matrix.spot_cues_spotlight_id FROM spot_cues LEFT OUTER JOIN spot_cue_sub_matrix ON spot_cues.id = spot_cue_sub_matrix.spot_cue_id;
    SQL


  end

  def down

    # drop the tablefunc extension
    execute <<-SQL
      DROP EXTENSION tablefunc;
    SQL

    # drop the spot_cue_submatrix view
    execute <<-SQL
      DROP view spot_cue_submatrix;
    SQL

    # drop the spot_cue_matrix view
    execute <<-SQL
      DROP view spot_cue_matrix;
    SQL

  end

end
