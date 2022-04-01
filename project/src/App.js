import "./App.css";
import "./index.css";
import Login from "./Login";
import { BrowserRouter as Router, Route, Link, Outlet } from "react-router-dom";
import React, { Component } from "react";

export class App extends Component {
  render() {
    return (
      <div className="App">
        <Link to="/login">Login</Link>
        <Link to="/register">Register</Link>
        <Outlet/>
      </div>
    );
  }
}

export default App;
