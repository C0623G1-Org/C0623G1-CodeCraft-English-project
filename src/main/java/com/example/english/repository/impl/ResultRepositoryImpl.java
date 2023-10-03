package com.example.english.repository.impl;

import com.example.english.model.Result;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IResultRepository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResultRepositoryImpl implements IResultRepository {
    private static final String SELECT = "SELECT \n" +
            "ch.ten_cau_hoi,\n" +
            "kq.dap_an_chon,\n" +
            "kq.dap_an_dung,\n" +
            "kq.diem\n" +
            "FROM ket_qua kq\n" +
            "JOIN cau_hoi ch ON kq.ma_cau_hoi=ch.ma_cau_hoi\n" +
            "WHERE kq.ma_lich_su=1;";

    @Override
    public List<Result> getAll() {
        Connection connection = BaseRepository.getConnection();
        List<Result> resultList = new ArrayList<>();
        Result result = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                String tenCauHoi = resultSet.getNString("ten_cau_hoi");
                String dapAnChon = resultSet.getNString("dap_an_chon");
                String dapAnDung = resultSet.getNString("dap_an_dung");
                int diem = resultSet.getInt("diem");
                result = new Result(tenCauHoi, dapAnChon, dapAnDung, diem);
                resultList.add(result);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return resultList;
    }

    @Override
    public int score() {
        int totalScore = 0;
        for (Result result : getAll()) {
            totalScore += result.getScore();
        }
        return totalScore;
    }

    @Override
    public void create(Result result) {

    }
}