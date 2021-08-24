import React from "react";
import { createUseStyles } from "react-jss";
import { Link } from "@reach/router";

const useStyles = createUseStyles({
    navbar: {
        width: "100vw",
        height: "60px",
        backgroundColor: "rgb(54,53,60)",
        color: "white",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
    },
    logoText: {
        fontSize: "1.5rem",
        letterSpacing: "2px",
        textDecoration: "none",
        color: "white",
        "&:hover": {
            color: "white",
        },
    },
});

export const Header = () => {
    const classes = useStyles();
    return (
        <header className={classes.navbar}>
            <Link to="/" className={`${classes.logoText} no-select`}>
                Linked Data Viz Catalogue
            </Link>
        </header>
    );
};

export default Header;