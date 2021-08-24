import qs from "querystring";

export default (path, params = null, options = {}) => {
    const API_URL = process.env.REACT_APP_API_URL;

    const url = `${API_URL}/${path}${params ? `?${qs.stringify(params)}` : ""}`;
    return fetch(url, {
        ...options,
    });
};