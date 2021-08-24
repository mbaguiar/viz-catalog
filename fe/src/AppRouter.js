import React from "react";
import { Router } from "@reach/router";

import Homepage from "./pages/Homepage";
import WorkPage from "./pages/WorkPage";
import AboutPage from "./pages/AboutPage";

export const AppRouter = () => (
    <Router>
        <Homepage path="/" default/>
        <WorkPage path="/works/:id" />
        <AboutPage path="/about"/>
    </Router>
);

export default AppRouter;