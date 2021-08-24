import React from "react";
import { Loader } from "semantic-ui-react";

import PageLayout from "./PageLayout";

export const FetchingPageLayout = ({ loading, error, children }) => (
    <PageLayout>
        { loading && <Loader active inline="centered" /> }
        { error && <p>error</p> }
        { !loading && !error && children }
    </PageLayout>
);

export default FetchingPageLayout;