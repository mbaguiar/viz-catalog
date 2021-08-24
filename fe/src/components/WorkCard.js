import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";
import placeholder from "../assets/placeholder.png";
import { Image } from "semantic-ui-react";
import getTypeColor from "../utils/typeColor";

const useStyles = createUseStyles({
    itemCard: {
        boxShadow: "rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px",
        display: "flex",
        flexDirection: "column",
        borderRadius: "20px",
        overflow: "hidden",
        height: "100%",
        color: "#2b2727",
        transition: "box-shadow 1s",
        "&:hover": {
            color: "#2b2727",
            boxShadow: "rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px",
        },
    },
    cardHeader: {
        backgroundColor: "rgba(255, 255, 255, 0.7)",
        padding: "1.5em",
        display: "flex",
        height: "100%",
        flexDirection: "column",
        alignItems: "flex-start",
    },
    itemYear: {
        color: "rgba(0,0,0,.5)",
        fontSize: "1rem",
    },
    itemName: {
        fontSize: "1.5em",
    },
    itemType: {
        marginTop: "0.6em",
        color: "white",
        backgroundColor: "rgba(0, 159, 147, 0.7)",
        display: "flex",
        alignItems: "left",
        paddingTop: "2%",
        paddingBottom: "2%",
        paddingLeft: "3%",
        paddingRight: "3%",
        borderRadius: "15px",
    }
});

export const WorkCard = ({ index, item }) => {
    const classes = useStyles();
    const typeColor = getTypeColor(item.type);
    
    return (
        <a href={`/works/${item.id}`} className={classes.itemCard}>
            <Image src={placeholder} size="large" />
            <header className={classes.cardHeader}>
                <span className={classes.itemName}>{item.name}</span>
                <span className={classes.itemYear}>{item.year}</span>
                <span className={classes.itemType} style={{backgroundColor: `${typeColor}`}}>{item.type}</span>
            </header>
        </a>
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