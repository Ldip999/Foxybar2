import { useBackend, useLocalState } from '../backend';
import { Window } from '../layouts';
import { Box, Button, Table } from '../components';
import { TableCell, TableRow, TableBody } from '../components/Table';
const HeaderBoxStyle = {
  "color": "#FFFFFF",
  "font-size": "16px",
  "font-weight": "bold",
  "text-align": "center",
};


export const Minesweeper = (props, context) => {
  const { data, act } = useBackend(context);
  return ( 
    <Window>
      <Window.Content style={{ "background": "linear-gradient(180deg, #2F4F4F, #1F3A3A)" }}>
        <Box style={{ "text-align": "center" }}>
          <Box style={{ "font-size": "16px", "font-weight": "bold" }}>Minesweeper</Box>
          <Box>Try to find all the mines without stepping on one!</Box>
        </Box>
        <MainBody />
      </Window.Content>
    </Window>
  );
};

const MainBody = (props, context) => {
  const { data, act } = useBackend(context);
  if (data.game_status === 0) {
    return (<MainMenu />);
  } else if (data.game_status === 1) {
    return (<Game />);
  }
};

const MainMenu = (props, context) => {
  const { data, act } = useBackend(context);
  return (
    <Box style={{ "text-align": "center" }}>
      <Box>
        Select your difficulty
      </Box>
      <Box>
        <Button onClick={() => act("SetDifficulty", { Difficulty: 1 })}>Easy(9x9, 10 mines)</Button>
      </Box>
      <Box>
        <Button onClick={() => act("SetDifficulty", { Difficulty: 2 })}>Medium(16x16, 40 mines)</Button>
      </Box>
      <Box>
        <Button onClick={() => act("SetDifficulty", { Difficulty: 3 })}>Hard(16x30, 99 mines)</Button>
      </Box>
    </Box>
  );
};

const Mine = (props, context) =>
{
  if (props.minestate === "hidden") {
    return (
      <TableCell style={{ "width": "16px", "height": "16px", "background-image": "url('https://www.dictionary.com/e/wp-content/uploads/2018/03/Thinking_Face_Emoji-Emoji-Island-300x300.png'" }}>?</TableCell>
    );
  }
};

const TableColumn = (props, context) =>
{
  const columns = [];
  for (let i = 0; i < props.Columns; i++) {
    columns.push(Mine({ "minestate": "hidden" }));
  }
  return (
    <TableColumn>
      {columns}
    </TableColumn>
  );
};

const MineTableRow = (props, context) =>
{
  return (
    <tr>
      {props.columns.map(<Mine minestate="hidden" />)}
    </tr>
  );
};
const Game = (props, context) => {
  const { data, act } = useBackend(context);
  const [getFormattedSampleData, setFormattedSampleData] = useLocalState(context, "Minefield", []);
  setFormattedSampleData([]);
  /* for (let i = 0; i < data.Rows; i++) {
    setFormattedSampleData((prevArr) =>
      [...prevArr, { rowid: i, Columns: data.Columns }]);
    /* for (let i2 = 0; i2 < sampledata[i].length; i++) {
      sampledata[i][i2] = "?";
    }
  }*/
  // console.log(getFormattedSampleData);
  
  return (
    <Box>
      <Box>
        <Button onClick={() => act("MainMenu", {})}>Back to main menu</Button>
      </Box>
      <Box>
        Now we are gaming!
      </Box>
      <Box>
        e2!
      </Box>
      <Box>
        <Table>
          {/*
            <tbody>
              {getFormattedSampleData.map(rows =>
                <MineTableRow key={row.rowid} columns={rows.Columns} />)}
            </tbody>
          */}
        </Table>
      </Box>
      
    </Box>
  );
};


