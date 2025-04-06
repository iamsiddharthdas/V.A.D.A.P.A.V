// File: App.jsx
import React, { useEffect, useState } from "react";
import { Input } from "@/components/ui/input";
import { Card, CardContent } from "@/components/ui/card";
import { BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer } from "recharts";

const API_URL = "http://localhost:5000/api/alumni";

export default function App() {
  const [alumni, setAlumni] = useState([]);
  const [search, setSearch] = useState("");
  const [chartData, setChartData] = useState([]);

  useEffect(() => {
    fetch(API_URL)
      .then((res) => res.json())
      .then((data) => {
        setAlumni(data);
        prepareChartData(data);
      });
  }, []);

  const prepareChartData = (data) => {
    const grouped = {};
    data.forEach((a) => {
      const year = a.batch;
      grouped[year] = grouped[year] || [];
      grouped[year].push(a.cgpa);
    });
    const chart = Object.entries(grouped).map(([year, cgpas]) => ({
      year,
      avgCGPA: (
        cgpas.reduce((acc, c) => acc + parseFloat(c), 0) / cgpas.length
      ).toFixed(2),
    }));
    setChartData(chart);
  };

  const filtered = alumni.filter(
    (a) =>
      a.name.toLowerCase().includes(search.toLowerCase()) ||
      a.rollNo.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div className="p-6 max-w-6xl mx-auto">
      <h1 className="text-2xl font-bold mb-4">🎓 VIT Alumni Directory</h1>
      <Input
        className="mb-4"
        placeholder="Search by name or roll number"
        value={search}
        onChange={(e) => setSearch(e.target.value)}
      />

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mb-10">
        {filtered.map((a) => (
          <Card key={a._id}>
            <CardContent className="p-4">
              <h2 className="font-semibold text-lg">{a.name}</h2>
              <p>Roll No: {a.rollNo}</p>
              <p>Program: {a.program}</p>
              <p>Batch: {a.batch}</p>
              <p>CGPA: {a.cgpa}</p>
              <p>Company: {a.company}</p>
            </CardContent>
          </Card>
        ))}
      </div>

      <h2 className="text-xl font-semibold mb-4">📊 Average CGPA by Batch</h2>
      <ResponsiveContainer width="100%" height={300}>
        <BarChart data={chartData}>
          <XAxis dataKey="year" />
          <YAxis />
          <Tooltip />
          <Bar dataKey="avgCGPA" fill="#8884d8" />
        </BarChart>
      </ResponsiveContainer>
    </div>
  );
}
