package com.os.module3;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class ExamGenerator {
    public static void main(String[] args) throws IOException {
        String[] queries = new String[600];
        FileWriter fileWriter = new FileWriter("/Users/Siarhei_Viarbouski/module3/dbquery/exam_result.sql");
        Arrays.stream(queries).forEach(query -> {
            Random random = new Random();
            query = "insert into exam_result (student_id, subject_id, mark) values (" +
                    ThreadLocalRandom.current().nextInt(1, 100_000) + "," +
                    ThreadLocalRandom.current().nextInt(1, 1000) + "," +
                    ThreadLocalRandom.current().nextInt(1, 10)  + " );\n";
            try {
                fileWriter.write(query);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
    }
}