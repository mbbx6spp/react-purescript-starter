import React from "react";
import { jsCounter as Counter } from "./output/Counter.Interop";

const App = () => {
    return (
        <div>
            <h1>React App</h1>
            <Counter label="Clicks" />
        </div>
    );
};

export default App;
