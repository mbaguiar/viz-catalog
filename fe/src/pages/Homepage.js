import { createUseStyles } from "react-jss";
import useGetWorks from "../hooks/getWorks";
import { Grid } from "semantic-ui-react";
import { Helmet } from "react-helmet";
import { useMediaQuery } from "react-responsive";

import FetchingPageLayout from "../components/FetchingPageLayout";
import WorkCard from "../components/WorkCard";

const useStyles = createUseStyles({
    gridColumn: {
        alignSelf: "stretch",
    },
    grid: {
        margin: "0 2em 0 2em"
    }
});

export const Homepage = () => {
    const classes = useStyles();
    const [works, loading, error] = useGetWorks();
    const isTablet = useMediaQuery({ query: "(max-width: 768px)"});
    const isMobile = useMediaQuery({ query: "(max-width: 414px)"});

    return (
        <FetchingPageLayout loading={loading} error={error}>
            <Helmet>
                <title>LD Viz Catalogue</title>
            </Helmet>
            {!loading && !error && works &&
                <article>
                    <Grid columns={isMobile ? 1 : (isTablet ? 2 : 3)} className={classes.grid}>
                        {works.map((item, index) => (
                            <Grid.Column className={classes.gridColumn} key={index}>
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