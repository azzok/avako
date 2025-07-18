import axios from "axios";

window.axios = axios;

axios.defaults.baseURL = `${FleetCart.baseUrl}/admin`;
axios.defaults.headers.common["X-CSRF-TOKEN"] = FleetCart.csrfToken;
axios.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest";
