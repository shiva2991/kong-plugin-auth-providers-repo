return {
  {
    name = "2018-01-17-init_auth_providers",
    up = [[
      CREATE TABLE IF NOT EXISTS auth_providers(
        id uuid,
        name text,
        provider_type text,
        uri text,
        method varchar(15),
        response_type varchar(20),
        config json,
        created_at timestamp,
        PRIMARY KEY(id)
      );

      CREATE INDEX IF NOT EXISTS ON auth_providers(name);
    ]],
    down = [[
      DROP TABLE auth_providers;
    ]]
  }
}
