import React from "react"
import { createUseStyles } from "react-jss";
import FetchingPageLayout from "../components/FetchingPageLayout";
import useGetWork from "../hooks/getWork";
import PropTypes from "prop-types";

const useStyles = createUseStyles({

})

export const WorkPage = ({ id }) => {
    const classes = useStyles();
    const [work, loading, error] = useGetWork(id);

    return (
        <FetchingPageLayout loading={loading} error={error}>
            {!loading && !error && work &&
            <article>
                {work.name}
            </article>}
        </FetchingPageLayout>
    );
};

WorkPage.proTypes = {
    id: PropTypes.number.isRequired,
};

export default WorkPage;