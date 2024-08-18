:: Q1. Follow the instructions in the ASL lesson #4 and video to make
:: a webapp with an interface that accepts a target ship to poke as well.

:: https://github.com/hoon-school/app-school-2023.8/blob/master/aa4.md

:: This should be a matter of adding a text field for inputting a ship name
:: as well as checking the target ship when passing the poke to the ship.

:: You may assume that the ship name is well-formatted
:: (i.e. just let the app+Gall handle a crash).

:: https://react.school/ui/input has a bit more information on what
:: that looks like in React, but do ask if you feel stuck on this part.

:: Answer with your App.jsx file.

:: Answer
import React, { useEffect, useState, useReducer } from "react";
import Urbit from "@urbit/http-api";
import { AppTile } from "./components/AppTile";

const api = new Urbit("", "", window.desk);
api.ship = window.ship;

function reducer(state, action) {
  let newState = [...state];
  switch (action.type) {
    case "init":
      return action.init;
    case "push":
      newState.unshift(action.val);
      return newState;
    case "pop":
      newState.shift();
      return newState;
    default:
      return state;
  }
}

export function App() {
  const [state, dispatch] = useReducer(reducer, []);
  const [inputValue, setInputValue] = useState("");
  const [targetValue, setTargetValue] = useState(`${window.ship}`)

  useEffect(() => {
    async function init() {
      api.subscribe({ app: "echo", path: "/values", event: handleUpdate });
    }
    init();
  }, []);

  const handleUpdate = (upd) => {
    if ("init" in upd) {
      dispatch({ type: "init", init: upd.init });
    } else if ("push" in upd) {
      dispatch({ type: "push", val: upd.push.value });
    } else if ("pop" in upd) {
      dispatch({ type: "pop" });
    }
  };

  const push = () => {
    const val = parseInt(inputValue);
    if (isNaN(val)) return;
    api.poke({
      app: "echo",
      mark: "echo-action",
      json: { push: { target: `~${targetValue}`, value: val } },
    });
    setInputValue("");
  };

  const pop = () => {
    api.poke({
      app: "echo",
      mark: "echo-action",
      json: { pop: `~${targetValue}` },
    });
  };

  return (
    <main className="flex flex-col items-center justify-center min-h-screen">
      <fieldset style={{ marginBottom: 20 }}>
        <label>Target: ~</label>
        <input
          style={{width: 135.3}}
          className="border"
          type="text"
          value={targetValue}
          onChange={(e) => setTargetValue(e.target.value)}
        />
      </fieldset>
      
      <input
        style={{ width: 200 }}
        className="border"
        type="text"
        value={inputValue}
        onChange={(e) => setInputValue(e.target.value)}
      />
      <div>
        <button
          onClick={() => push()}
          style={{ width: 100 }}
          className="border p-2 text-black-400"
        >
          Push
        </button>
        <button
          onClick={() => pop()}
          style={{ width: 100 }}
          className="border p-2 text-black-400"
        >
          Pop
        </button>
        <p>Our stack</p>
        {state.map((eachValue, index) => {
          return <li key={index}>{eachValue}</li>;
        })}
      </div>
    </main>
  );
}

export default App;
