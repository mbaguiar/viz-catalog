import React, { useState, useRef } from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";
import useGetWorks from "../hooks/getWorks";
import { Grid } from "semantic-ui-react";

import FetchingPageLayout from "../components/FetchingPageLayout";
import WorkCard from "../components/WorkCard";

const useStyles = createUseStyles({
    grid: {
        alignSelf: "stretch",
    }
});

export const Homepage = () => {
    const classes = useStyles();
    const [works, loading, error] = useGetWorks();

    return (
        <FetchingPageLayout loading={loading} error={error}>
            {!loading && !error && works &&
                <article>
                    <Grid doubling columns={3}>
                        {works.map((item, index) => (
                            <Grid.Column class={classes.grid} key={index}>
                                <WorkCard index={index} item={item} />
                            </Grid.Column>
                        ))}
                    </Grid>

                </article>
            }
        </FetchingPageLayout>

    );
};


export default Homepage;