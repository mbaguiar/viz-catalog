import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";

import Header from "./Header";
import Footer from "./Footer";

const useStyles = createUseStyles({
    page: {
        minHeight: "100vh",
        position: "relative",
        paddingBottom: "4em",
        paddingLeft: "2em",
        paddingRight: "2em",
        fontFamily: "Karla",
        color: "#2b2727"
    },
    main: {
        padding: "2em 0px",
        maxWidth: "900px",
        margin: "0 auto",
    },
});

export const PageLayout = ({ children }) => {
    const classes = useStyles();
    return (
        <div className={classes.page}>
            <Header />
            <main className={classes.main}>
                {children}
            </main>
            <Footer />
        </div>
    );
};

PageLayout.propTypes = {
    children: PropTypes.oneOfType([PropTypes.node, PropTypes.arrayOf(PropTypes.node)]).isRequired,
};

export default PageLayout;