import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";

const useStyles = createUseStyles({
    itemCard: {
        boxShadow: "0px 0px 3px 0px rgba(176,176,176,1)",
        // marginBottom: "1.5em",
        display: "flex",
        flexDirection: "column",
    },
    cardHeader: {
        padding: "1em",
        display: "flex",
        alignItems: "center",
        borderBottom: "1px solid rgba(0,0,0,.1)",
    },
    itemIndex: {
        color: "rgba(0,0,0,.5)",
        fontSize: "1.8rem",
    },
    itemLabel: {
        marginLeft: "1em",
    },
    noLabel: {
        color: "rgba(0,0,0,.5)",
    },
});

export const WorkCard = ({ index, item }) => {
    const classes = useStyles();
    
    return (
        <div className={classes.itemCard}>
            <header className={classes.cardHeader}>
                <span className={classes.itemLabel}>{item.name}</span>
                <span className={classes.itemIndex}>{item.year}</span>
            </header>
        </div>
    );
};

WorkCard.propTypes = {
    index: PropTypes.number.isRequired,
    item: PropTypes.shape({
        id: PropTypes.number.isRequired,
        name: PropTypes.string.isRequired,
        year: PropTypes.number.isRequired,
        type: PropTypes.string.isRequired,
    }),
};

export default WorkCard;