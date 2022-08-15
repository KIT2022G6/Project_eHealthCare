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
import React, { Component } from "react";
import { Container } from "react-bootstrap";

class Footer extends Component {
  render() {
    return (
      <footer className="footer px-0 px-lg-3">
        <Container fluid>
          <section className="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
            <div className="me-5 d-none d-lg-block">
              <span>Get connected with us on social networks:</span>
            </div>

            <div>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-facebook-f"></i>
              </a>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-twitter"></i>
              </a>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-google"></i>
              </a>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-instagram"></i>
              </a>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-linkedin"></i>
              </a>
              <a href="" className="me-4 text-reset">
                <i className="fab fa-github"></i>
              </a>
            </div>
          </section>
          <nav>
            <ul className="footer-menu">
              <li>
                <div class="widget-column footer-active-4">
                  <section id="text-3" class="widget widget_text">
                    <h4 class="widget-title">About Us</h4>
                    <div class="textwidget">
                      Medical Way is responsive health theme for doctors, <br />
                      hospitals, medical clinics, pediatric, dental, gynecology, <br />
                      general therapist and all medial websites. Get perfect, <br />
                      modern and professional website with no coding knowledge. <br />
                      Making your website your own is easier than ever before with Medical Way.
                    </div>
                  </section>
                </div>
              </li>

              <li>
                <div class="widget-column footer-active-4" className="text-center">
                  <section id="recent-posts-3" class="widget widget_recent_entries">
                    <h4 class="widget-title">Recent Posts</h4>
                    <ul><br />
                      <li>Aliquam mollis consequat est</li> <br />
                      <li>Quisque pretium sodales arcu</li> <br />
                      <li>Nibh dignissim ornare egestas</li> <br />
                      <li>Donec pretium aliquet dapibus</li>

                    </ul>
                  </section>
                </div>
              </li>

              <li>
                <div class="widget-column footer-active-4" className="text-center">
                  <section id="text-2" class="widget widget_text">
                    <h4 class="widget-title">Opening Hours</h4>
                    <div class="textwidget">
                      <ul><br />
                        <li>Monday - Friday : 06:00 Am - 08:00 Pm</li> <br />
                        <li>Saturday : 08:00 Am - 04:00 Pm</li> <br />
                        <li>Sunday : 10:00 Am - 02:00 Pm</li> <br />
                        <li>Emergency : (anytime call us)</li>
                      </ul>
                    </div>
                  </section>
                </div>
              </li>
            </ul>

            <p className="copyright text-center">
              © {new Date().getFullYear()}{" "}
              <a href="http://www.creative-tim.com">Creative Tim</a>, made with
              love for a better web
            </p>
          </nav>
        </Container>
      </footer>
    );
  }
}

export default Footer;