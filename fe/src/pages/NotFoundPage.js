import React from "react";
import FetchingPageLayout from "../components/FetchingPageLayout";

export const NotFoundPage = () => {
    return (
        <FetchingPageLayout loading={false} error={false}>
            <p>Page Not Found</p>
        </FetchingPageLayout>
    )
};

export default NotFoundPage;