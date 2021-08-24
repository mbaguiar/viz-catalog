import { useEffect, useState } from "react";
import apiFetch from "../utils/apiFetch";

export const useGetWork = (id) => {
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(false);
    const [data, setData] = useState({});

    const url = `works/${id}`;

    useEffect(() => {
        const fetchData = async () => {
            try {
                const res = await apiFetch(url);
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
                setLoading (false);
            }
        };
        fetchData();
    }, [url]);

    return [data, loading, error];
};

export default useGetWork;