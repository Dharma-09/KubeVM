import React from 'react';
import { Card, CardContent, Typography, Grid, Button } from '@mui/material';

const VMCard = ({ vm }) => (
  <Card>
    <CardContent>
      <Typography variant="h6">{vm.name}</Typography>
      <Typography variant="body2">Status: {vm.status}</Typography>
      <Button variant="contained" href={`/vm/${vm.id}`}>Access</Button>
    </CardContent>
  </Card>
);

const Dashboard = () => {
  const vms = [
    { id: 1, name: 'VM1', status: 'Running' },
    { id: 2, name: 'VM2', status: 'Stopped' },
  ];

  return (
    <Grid container spacing={2}>
      {vms.map((vm) => (
        <Grid item xs={12} sm={6} md={4} key={vm.id}>
          <VMCard vm={vm} />
        </Grid>
      ))}
    </Grid>
  );
};

export default Dashboard;
