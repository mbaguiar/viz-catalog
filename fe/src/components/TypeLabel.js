import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";
import getTypeColor from "../utils/typeColor";

const useStyles = createUseStyles({
    itemType: {
        color: "white",
        backgroundColor: "rgba(0, 159, 147, 0.7)",
        paddingTop: "2%",
        paddingBottom: "2%",
        paddingLeft: "3%",
        paddingRight: "3%",
        borderRadius: "15px",
        whiteSpace: "nowrap",
    },
    small: {
        marginTop: "0.6em",
    },
    big: {
        paddingTop: "1%",
        paddingBottom: "1%",
        paddingLeft: "1%",
        paddingRight: "1%",
        fontSize: "1.5em",
        marginRight: "2%"
    }
});

export const TypeLabel = ({ type, size }) => {
    const classes = useStyles();
    const typeColor = getTypeColor(type);

    const sizeClass = size === "small" ? classes.small : classes.big;

    return (
            <span className={`${classes.itemType} ${sizeClass}`} style={{backgroundColor: `${typeColor}`}}>{type}</span>
    )
};

TypeLabel.propTypes = {
    type: PropTypes.string.isRequired,
    size: PropTypes.string.isRequired,
};

export default TypeLabel;