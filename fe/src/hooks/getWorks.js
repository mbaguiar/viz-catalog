import { useEffect, useState } from "react";
import apiFetch from "../utils/apiFetch";

export const useGetWorks = () => {
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(false);
    const [data, setData] = useState({});

    useEffect(() => {
        const fetchData = async () => {
            try {
                const res = await apiFetch("works");
                if (res.status !== 200) {
                    setError(true);
                    setLoading(false);
                    return;
                }
                setData(await res.json());
                setLoading(false);
            } catch (err) {
                console.error(err);
                setError(true);
                setLoading(false);
            }
        };
        fetchData();
    }, []);

    return [data, loading, error];
};

export default useGetWorks;