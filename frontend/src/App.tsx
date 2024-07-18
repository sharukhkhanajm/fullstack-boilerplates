import { useState, useEffect } from "react";
import "./App.css";

function App() {
  const [apiData, setApiData] = useState("Loading api data...");

  useEffect(() => {
    (async function () {
      const res = await fetch("/api");
      const data = (await res.json()) as { message: string };
      setApiData(data.message);
    })();
  }, []);

  return <>{apiData}</>;
}

export default App;
