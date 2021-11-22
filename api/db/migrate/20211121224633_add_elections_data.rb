class AddElectionsData < ActiveRecord::Migration[6.1]
  def change
   # candidate_rounds table appears to disappear -  results = ActiveRecord::Base.connection.execute("update candidate_rounds set election_id =1;")
   results = ActiveRecord::Base.connection.execute("insert into elections (name, position, election_type, region, status, winning_candidate_id, created_at, updated_at) values ('School Board Election', 'Council Member',  1,  1,  4, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
   results = ActiveRecord::Base.connection.execute("insert into elections (name, position, election_type, region, status, winning_candidate_id, created_at, updated_at) values ('Primary Election', 'Senate',  1,  1,  1, NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);")
  end
end
