import React from "react"
import { createUseStyles } from "react-jss";
import FetchingPageLayout from "../components/FetchingPageLayout";
import useGetWork from "../hooks/getWork";
import { Image } from "semantic-ui-react";
import placeholder from "../assets/placeholder.png";
import PropTypes from "prop-types";
import TypeLabel from "../components/TypeLabel";
import { InfoCard } from "../components/InfoCard";

const useStyles = createUseStyles({
    work: {
        display: "flex",
        flexDirection: "row",
    },
    workInfo: {
        display: "flex",
        flexDirection: "column",
        flexShrink: "2"
    },
    workExtraInfo: {
        display: "flex",
        flexDirection: "column",
    },
    workHeader1: {
        display: "flex",
        margin: "5% 0% 2% 0%",
        alignItems: "center",
    },
    workHeader2: {
        display: "flex",
        alignItems: "center",
        color: "rgba(0,0,0,.5)",
        marginBottom: "2%"
    },
    workTitle: {
        fontSize: "4em",
        color: "#2b2727",
        textAlign: "left",
        lineHeight: "100%",
    },
    workYear: {
        fontSize: "1.5rem",
    },
    workDomain: {
        fontSize: "1.5rem",
        width:"100%",
        marginLeft: "1%",
    },
    text: {
        fontSize: "1.3em",
        lineHeight: "130%",
    },
})

export const WorkPage = ({ id }) => {
    const classes = useStyles();
    const [work, loading, error] = useGetWork(id);

    return (
        <FetchingPageLayout loading={loading} error={error}>
            {!loading && !error && work &&
            <article>
                <div className={classes.work}>
                    <div className={classes.workInfo}>
                        <Image src={placeholder} size="huge"/>
                        <div className={classes.workHeader1}>
                            <div className={classes.workTitle}>{work.name}</div>
                        </div>
                        <div className={classes.workHeader2}>
                            <TypeLabel type={work.type} size="big"></TypeLabel>
                            <span className={classes.workYear}>{work.year}</span>
                        </div>
                        <span className={classes.text}>{work.description}</span>
                    </div>
                    <div>
                        <InfoCard title="Interactive Features" list={work.interactiveFeatures} evaluation={false}></InfoCard>
                        {work.singleVisualisations.length > 0 ?
                            <InfoCard title="Single Instance Visualizations" list={work.singleVisualisations} evaluation={false}></InfoCard> : 
                            <span></span>
                        }
                        {work.setVisualisations.length ? 
                            <InfoCard title="Instance Set Visualizations" list={work.setVisualisations} evaluation={false}></InfoCard> :
                            <span></span>
                        }
                        {work.searchSolutions.length ?
                            <InfoCard title="Search Solutions" list={work.searchSolutions} evaluation={false}></InfoCard> :
                            <span></span>
                        }
                        {work.evaluations.length && work.evaluations[0].kind !== "None" ? 
                            <InfoCard title="Evaluation Methods" list={work.evaluations} evaluation={true}></InfoCard> :
                            <span></span>
                        }
                    </div>
                </div>
            </article>}
            {!loading && error && 
            <p>Page Not Found</p>
            }
        </FetchingPageLayout>
    );
};

WorkPage.proTypes = {
    id: PropTypes.number.isRequired,
};

export default WorkPage;