/*!

=========================================================
* Light Bootstrap Dashboard React - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/light-bootstrap-dashboard-react
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/light-bootstrap-dashboard-react/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import Medicine from "views/Drugstores/Medicine";
import DrugstoresProfile from "views/Drugstores/DrugstoresProfile";
import MedicalRecord from "views/Drugstores/MedicalRecord";

const dashboardRoutes = [
  {
    path: "/Drugstores/DrugstoresProfile",
    name: "Drugstores Profile",
    icon: "nc-icon nc-circle-09",
    component: DrugstoresProfile,
    layout: "/admin"
  },
  {
    path: "/Drugstores/Medicine",
    name: "Medicine",
    icon: "nc-icon nc-notes",
    component: Medicine,
    layout: "/admin"
  },
  {
    path: "/Drugstores/MedicalRecord",
    name: "Medical Record",
    icon: "nc-icon nc-notes",
    component: MedicalRecord,
    layout: "/admin"
  }
];

export default dashboardRoutes;
