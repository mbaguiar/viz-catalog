import React from 'react';
import AppRouter from "./AppRouter";
import { Helmet } from 'react-helmet';
import icon from "./assets/favicon.png";

const App = () => (
    <>
        <Helmet>
            <title>LD Viz Catalogue</title>
            <link rel="icon" type="image/png" href={icon}></link>
        </Helmet>
        <AppRouter />
    </>
);

export default App;
