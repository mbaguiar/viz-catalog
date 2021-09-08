import React from "react";
import { Router } from "@reach/router";

import Homepage from "./pages/Homepage";
import WorkPage from "./pages/WorkPage";
import AboutPage from "./pages/AboutPage";
import NotFoundPage from "./pages/NotFoundPage";

export const AppRouter = () => (
    <Router>
        <Homepage path="/"/>
        <WorkPage path="/work/:id" />
        {/* <AboutPage path="/about"/> */}
        <NotFoundPage default />
    </Router>
);

export default AppRouter;