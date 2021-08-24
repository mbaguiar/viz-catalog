import React from "react";
import { createUseStyles } from "react-jss";

const useStyles = createUseStyles({
    footer: {
        margin: "0 auto",
        width: "100%",
        position: "absolute",
        bottom: "2em",
        textAlign: "center",
    },
});

export const Footer = () => {
    const classes = useStyles();
    return (
        <footer className={classes.footer}>
            Linked Data Viz Catalogue | 2021
        </footer>
    );
};

export default Footer;