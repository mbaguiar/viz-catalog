import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";
import { Grid } from "semantic-ui-react";
import { useMediaQuery } from "react-responsive";

const useStyles = createUseStyles({
    card: {
        display: "flex",
        flexDirection: "column",
        backgroundColor: "#E2E3EE",
        borderRadius: "20px",
        margin: "2px 10px 10px 10px",
        width: "100%",
        overflow: "hidden"
    },
    cardMobile: {
        display: "flex",
        flexDirection: "column",
        backgroundColor: "#E2E3EE",
        borderRadius: "20px",
        margin: "2px 0 10px 0",
        width: "100%",
        overflow: "hidden"
    },
    line: {
        marginBottom: "5px",  
        fontSize: "1.1rem",
    },
    title: {
        width: "100%",
        whiteSpace: "nowrap",
        padding: "10px 15px 10px 15px",
        color: "#35375b",
        fontSize: "1.2rem",
    },
    list: {
        padding: "15px",
        backgroundColor: "rgba(255, 255, 255, 0.5)",
        width: "100%",
    }
});

export const InfoCard = ({ title, list, evaluation }) => {
    const classes = useStyles();
    const isTabletOrMobile = useMediaQuery({ query: "(max-width: 768px)"});

    return (
        <div className={isTabletOrMobile ? classes.cardMobile : classes.card}>
            <span className={classes.title}><b>{title}</b></span>
            <div className={classes.list}>
                {list.map((item, index) => (
                    <div className={classes.line} key={index}>
                        {!evaluation ? 
                            <span>{item.type}</span> :
                            <span>{item.type} - {item.numberParticipants} participants</span>
                        }
                    </div> 

                ))}
            </div>
        </div>
    );
};

InfoCard.propTypes = {
    title: PropTypes.string.isRequired,
    list: PropTypes.arrayOf(PropTypes.shape({
        type: PropTypes.string,
        kind: PropTypes.string,
        numberParticipants: PropTypes.number,
    })),
    evaluation: PropTypes.bool.isRequired,
};

export default InfoCard;