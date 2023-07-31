package org.goit.hw6.services;

import org.flywaydb.core.Flyway;

public class FlywayMigration {

    public void flywayMigration() {

        Flyway flyway = Flyway
                .configure()
                .baselineOnMigrate(true)
                .dataSource("jdbc:h2:C:\\Users\\Ivan\\IdeaProjects\\HorbatkoIvan-JD-HW6\\MyDB", "", "")
                .load();

        flyway.migrate();
    }
}
