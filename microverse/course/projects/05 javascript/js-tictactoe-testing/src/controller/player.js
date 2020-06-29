
const Player = ((pName, pToken, pTurn) => {
  const name = pName;
  const token = pToken;
  const turn = pTurn;


  return {
    name,
    token,
    turn,
  };
});

export default Player;
