import React from "react";
import { createUseStyles } from "react-jss";
import { Link } from "@reach/router";
import { useMediaQuery } from "react-responsive";

const useStyles = createUseStyles({
    navbar: {
        width: "100vw",
        height: "60px",
        display: "flex",
        justifyContent: "space-between",
        alignItems: "center",
        padding: "5em 3em 5em 1.5em"
    },

    menu: {
        display: "flex",
        justifyContent: "space-around",
        alignItems: "center",
    },

    menuOption: {
        backgroundColor: "rgba(53, 55, 91, 0.05)",
        borderRadius: "20px",
        color: "#35375b",
        "&:hover": {
            color: "#35375b",
        },
        padding: "1em",
        fontSize: "1.2em",
        marginRight: "1em",
    },

    logoText: {
        fontSize: "3rem",
        textDecoration: "none",
        color: "#2b2727",
        "&:hover": {
            color: "#2b2727",
        },
    },
    logoTextTablet: {
        fontSize: "2rem",
        textDecoration: "none",
        color: "#2b2727",
        "&:hover": {
            color: "#2b2727",
        },  
    },
    logoTextMobile: {
        fontSize: "1.5rem",
        textDecoration: "none",
        color: "#2b2727",
        "&:hover": {
            color: "#2b2727",
        },
    },
});

export const Header = () => {
    const classes = useStyles();
    const isTablet = useMediaQuery({ query: "(max-width: 768px)"});
    const isMobile = useMediaQuery({ query: "(max-width: 414px)"});
    return (
        <header className={classes.navbar}>
            <Link to="/" className={isMobile ? classes.logoTextMobile : (isTablet ? classes.logoTextTablet : classes.logoText)}>
                Linked Data Viz Catalogue
            </Link>
            <div className={classes.menu}>
                {/* <Link to="/about" className={classes.menuOption}> */}
                    {/* <b>About</b>
                </Link>
                <div className={classes.menuOption}>
                    <b>Add visualization</b>
                </div> */}
            </div>
        </header>
    );
};

export default Header;